
## Syncing mods
To sync the mods with the ones that are written in the manifest.json, run the `syncmods.bat` (Windows) or `syncmods.sh` (Linux/MacOS) script.

## Syncing overrides
Everything that is not written in the manifest.json is an override. (For example configs, scripts, resources)  
To copy the overrides you changed to the pax/modpack/overrides folder, run the `sync_overrides.bat` (Windows) or `sync_overrides.sh` (Linux/MacOS) script.

## Pax usage
Use pax using cmd or terminal.
To see how [Pax] works it's recommended to go check out its wiki: [here](https://github.com/froehlichA/pax/wiki)

### Locating pax folder
To tocate the pax folder on your computer, use `./cd` to do that.

#### Examples:
```cmd
Windows:
$ cd .\minecraft\pax

Linux:
$ cd ./minecraft/pax
```

<!-- Links: -->
[Git]: https://git-scm.com/
[Pax]: https://github.com/froehlichA/pax
