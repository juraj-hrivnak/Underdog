echo Started to syncing the files!

rem config
cd modpack\overrides
if not exist "config" mkdir "config"
cd config
for /F "delims=" %%i in ('dir /b') do (rmdir "%%i" /s/q || del "%%i" /s/q)
cd ..\..\..\..
xcopy /s config pax\modpack\overrides\config\
cd pax

rem local
cd modpack\overrides
if not exist "local" mkdir "local"
cd local
for /F "delims=" %%i in ('dir /b') do (rmdir "%%i" /s/q || del "%%i" /s/q)
cd ..\..\..\..
xcopy /s local pax\modpack\overrides\local\
cd pax

rem oresources
cd modpack\overrides
if not exist "oresources" mkdir "oresources"
cd oresources
for /F "delims=" %%i in ('dir /b') do (rmdir "%%i" /s/q || del "%%i" /s/q)
cd ..\..\..\..
xcopy /s oresources pax\modpack\overrides\oresources\
cd pax

rem patchouli_books
cd modpack\overrides
if not exist "patchouli_books" mkdir "patchouli_books"
cd patchouli_books
for /F "delims=" %%i in ('dir /b') do (rmdir "%%i" /s/q || del "%%i" /s/q)
cd ..\..\..\..
xcopy /s patchouli_books pax\modpack\overrides\patchouli_books\
cd pax

rem resourcepacks
cd modpack\overrides
if not exist "resourcepacks" mkdir "resourcepacks"
cd resourcepacks
for /F "delims=" %%i in ('dir /b') do (rmdir "%%i" /s/q || del "%%i" /s/q)
cd ..\..\..\..
xcopy /s resourcepacks pax\modpack\overrides\resourcepacks\
cd pax

rem resources
cd modpack\overrides
if not exist "resources" mkdir "resources"
cd resources
for /F "delims=" %%i in ('dir /b') do (rmdir "%%i" /s/q || del "%%i" /s/q)
cd ..\..\..\..
xcopy /s resources pax\modpack\overrides\resources\
cd pax

rem scripts
cd modpack\overrides
if not exist "scripts" mkdir "scripts"
cd scripts
for /F "delims=" %%i in ('dir /b') do (rmdir "%%i" /s/q || del "%%i" /s/q)
cd ..\..\..\..
xcopy /s scripts pax\modpack\overrides\scripts\
cd pax

rem structures
cd modpack\overrides
if not exist "structures" mkdir "structures"
cd structures
for /F "delims=" %%i in ('dir /b') do (rmdir "%%i" /s/q || del "%%i" /s/q)
cd ..\..\..\..
xcopy /s structures pax\modpack\overrides\structures\
cd pax

echo Done!
