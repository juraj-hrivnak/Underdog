echo Started to syncing mods! Be patient!

cd ..
if [ -d "mods" ]; then
    rm -rf mods
fi
cd pax/modpack/overrides
cp -r mods ../../../
cd ../../.out/missing_mods
cp -r * ../../../mods/
cd ../../

java -jar ModpackDownloader-cli-0.6.1.jar -manifest modpack/manifest.json -folder ../mods

read "Done!"