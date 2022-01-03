echo Started to syncing files!

# config
cd modpack/overrides
if [ -d "config" ]; then
    rm -rf config
fi
cd ../../..
cp -r config pax/modpack/overrides
cd pax

# local
cd modpack/overrides
if [ -d "local" ]; then
    rm -rf local
fi
cd ../../..
cp -r local pax/modpack/overrides
cd pax

# oresources
cd modpack/overrides
if [ -d "oresources" ]; then
    rm -rf oresources
fi
cd ../../..
cp -r oresources pax/modpack/overrides
cd pax

# patchouli_books
cd modpack/overrides
if [ -d "patchouli_books" ]; then
    rm -rf patchouli_books
fi
cd ../../..
cp -r patchouli_books pax/modpack/overrides
cd pax

# resources
cd modpack/overrides
if [ -d "resources" ]; then
    rm -rf resources
fi
cd ../../..
cp -r resources pax/modpack/overrides
cd pax

# scripts
cd modpack/overrides
if [ -d "scripts" ]; then
    rm -rf scripts
fi
cd ../../..
cp -r scripts pax/modpack/overrides
cd pax

# structures
cd modpack/overrides
if [ -d "scripts" ]; then
    rm -rf scripts
fi
cd ../../..
cp -r scripts pax/modpack/overrides
cd pax

read "Done!"
