
# Parse json
$json = Get-Content '.\setup.json' | Out-String | ConvertFrom-Json
$pax_version = $json.PAX
$modpack_downloader_version = $json.ModpackDownloader
$server_pack_creator_version = $json.ServerPackCreator

Write-Output "pax_version value is: $pax_version"
Write-Output "modpack_downloader_version value is: $modpack_downloader_version"
Write-Output "server_pack_creator_version value is: $server_pack_creator_version"

# Download and unzip pax
Invoke-WebRequest https://github.com/froehlichA/pax/releases/download/v$pax_version/pax-windows.zip -OutFile pax.zip
Expand-Archive -Path pax.zip -DestinationPath .\
Remove-Item pax.zip

# Download modpack downloader
Invoke-WebRequest https://github.com/juraj-hrivnak/ModpackDownloader/releases/download/v$modpack_downloader_version/ModpackDownloader-$modpack_downloader_version-jar-with-dependencies.jar -OutFile ModpackDownloader-$modpack_downloader_version-jar-with-dependencies.jar

# Download server pack creator
Invoke-WebRequest https://github.com/Griefed/ServerPackCreator/releases/download/$server_pack_creator_version/ServerPackCreator-$server_pack_creator_version.jar -OutFile ./serverpack/ServerPackCreator-$server_pack_creator_version.jar

# Wait for user response
Write-Host -NoNewLine 'Done! Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
