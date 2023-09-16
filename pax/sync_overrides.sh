echo Started to syncing files!

# config
cd modpack/overrides
if [ -d "config" ]; then
    rm -rf config
fi
cd ../../..
cp -r config pax/modpack/overrides
cd pax

echo Config synced!

# groovy
cd modpack/overrides
if [ -d "groovy" ]; then
    rm -rf groovy
fi
cd ../../..
cp -r groovy pax/modpack/overrides
cd pax

echo Groovy synced!

# local
cd modpack/overrides
if [ -d "local" ]; then
    rm -rf local
fi
cd ../../..
cp -r local pax/modpack/overrides
cd pax

echo Local synced!

# oresources
cd modpack/overrides
if [ -d "oresources" ]; then
    rm -rf oresources
fi
cd ../../..
cp -r oresources pax/modpack/overrides
cd pax

echo Oresources synced!

# patchouli_books
cd modpack/overrides
if [ -d "patchouli_books" ]; then
    rm -rf patchouli_books
fi
cd ../../..
cp -r patchouli_books pax/modpack/overrides
cd pax

echo Patchouli Books synced!

# resources
cd modpack/overrides
if [ -d "resources" ]; then
    rm -rf resources
fi
cd ../../..
cp -r resources pax/modpack/overrides
cd pax

echo Resources synced!

# scripts
cd modpack/overrides
if [ -d "scripts" ]; then
    rm -rf scripts
fi
cd ../../..
cp -r scripts pax/modpack/overrides
cd pax

echo Scripts synced!

# structures
cd modpack/overrides
if [ -d "structures" ]; then
    rm -rf structures
fi
cd ../../..
cp -r structures pax/modpack/overrides
cd pax

echo Structures synced!
echo Syncing completed!
