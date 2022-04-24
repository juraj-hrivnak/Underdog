
cd ..
if not exist "mods" mkdir "mods"
cd mods
for /F "delims=" %%i in ('dir /b') do (rmdir "%%i" /s/q || del "%%i" /s/q)
cd ..\pax\modpack\overrides
xcopy /s/q mods ..\..\..\mods\
cd ..\..\.out
xcopy /s/q missing_mods ..\..\mods\
cd ..

cmd /c java -jar ModpackDownloader-cli-0.7.2.jar -manifest modpack/manifest.json -folder ../mods

cd ..\mods
del /s/q *.zip

echo Done!