echo Started to syncing files!

# config
cd modpack/overrides
if [ -d "config" ]; then
    rm -rf config
fi
cd ../../..
cp -r config pax/modpack/overrides
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

read -p "Done!"
