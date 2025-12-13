#!/usr/bin/env bash
set -euo pipefail

# This script gathers modpack metadata, generates diffs, updates the changelog, and provides outputs for GitHub Actions.

echo "🔎 Getting modpack info..."

# Ensure required tools are available
for tool in jq curl java perl grep sed; do
  command -v $tool >/dev/null 2>&1 || { echo "::error::$tool is required but not installed."; exit 1; }
done

# -- CHECK LOCKFILE --
if [ ! -f pakku-lock.json ]; then
  echo "::error::Could not find pakku-lock.json" && exit 1
fi
echo "✔️ pakku-lock.json"

if [ ! -f pakku.json ]; then
  echo "::error::Could not find pakku.json" && exit 1
fi
echo "✔️ pakku.json"

config_file=$(cat pakku.json)

# -- PROJECT NAME --
projectname=$(jq -r '.name' <<< "$config_file")
echo "projectname=$projectname" >> $GITHUB_OUTPUT
echo "📃 projectname=$projectname"
echo -e "📃 projectname=$projectname" >> $GITHUB_STEP_SUMMARY

# -- TAGS --
latest_tag=$(git describe --tags --abbrev=0)
echo "tag=$latest_tag" >> $GITHUB_OUTPUT
echo "📃 latest_tag=$latest_tag"
echo -e "📃 latest_tag=$latest_tag" >> $GITHUB_STEP_SUMMARY

# -- PROJECT SUFFIX --
projectsuffix="build.${GITHUB_RUN_NUMBER}"
if [[ "${GITHUB_REF}" == refs/tags/v* ]]; then
  projectsuffix="$latest_tag"
fi
echo "projectsuffix=$projectsuffix" >> $GITHUB_OUTPUT
echo "📃 projectsuffix=$projectsuffix"
echo -e "📃 projectsuffix=$projectsuffix" >> $GITHUB_STEP_SUMMARY

# -- RELEASE TYPE
rel_type="release"
case $latest_tag in
  *alpha*) rel_type="alpha" ;;
  *beta*) rel_type="beta" ;;
  *) rel_type="release" ;;
esac
echo "rel_type=$rel_type" >> $GITHUB_OUTPUT
echo "📃 rel_type=$rel_type"
echo -e "📃 rel_type=$rel_type" >> $GITHUB_STEP_SUMMARY

# -- DIFF --
latest_tagged_commit=$(git rev-list -n 1 --pretty=format:"%h" $latest_tag | sed -n 2p)
if [ "$latest_tag" = "${GITHUB_REF_NAME}" ]; then
  latest_tag_prev=$(git describe --tags --abbrev=0 $(git describe --tags --abbrev=0)^)
  latest_tagged_commit=$(git rev-list -n 1 --pretty=format:"%h" $latest_tag_prev | sed -n 2p)
fi
echo "📃 latest_tagged_commit=$latest_tagged_commit"
echo -e "📃 latest_tagged_commit=$latest_tagged_commit" >> $GITHUB_STEP_SUMMARY

git show "$latest_tagged_commit:./pakku-lock.json" > ./pakku-lock-prev.json

curl -sSL -o pakku.jar https://github.com/juraj-hrivnak/pakku/releases/latest/download/pakku.jar

java -jar ./pakku.jar diff ./pakku-lock-prev.json ./pakku-lock.json -v --markdown PROJECTS_DIFF.md

# -- OUTPUT DIFF --
{
  echo 'diff<<EOF'
  cat PROJECTS_DIFF.md
  echo EOF
} >> "$GITHUB_OUTPUT"

# -- CHANGELOG --
changelog="./CHANGELOG.md"

# Replace @mod_changes@ with diff
mod_changes=$(sed -r 's/\//\\\//g' PROJECTS_DIFF.md)
perl -i -pe "s/\@mod_changes\@/$mod_changes/g" "$changelog"

# Get and upload @news@
news=$(grep -Pzo '\@news\@\{\K[\s]\n*([\s\S]*)\n(?=\})' "$changelog" | sed '/^$/d' | sed -E ':a;N;$!ba;s/\r{0,1}\n/\\n/g')
echo "news=$news" >> $GITHUB_OUTPUT

# Replace @news@ with content
perl -0777 -i -pe "s/\@news\@\{[\s]\n*([\s\S]*)\n\}\n/$news/g" "$changelog"

echo -e "***" >> $GITHUB_STEP_SUMMARY
cat "$changelog" >> $GITHUB_STEP_SUMMARY

# Rename changelog with suffix
mv "$changelog" "CHANGELOG-$projectsuffix.md"
