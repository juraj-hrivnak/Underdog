# Contributing to Underdog

## Required software

- [Git]

## Recommended software

- [MultiMC]
- [Visual Studio Code]


## Set-up

Please follow these steps:

### 1

- Fork the project.

### 2

- In your MultiMC, add a new 1.12.2 instance called Underdog.
- Install `Forge 1.23.5.2860`.

### 3

- Delete *everything* from the `Underdog/.minecraft` folder.

### 4

- Clone the project to the empty `Underdog/.minecraft` folder. \
You can do that using **terminal**, **cmd** or the **GitHub Desktop** app.

### 5

- Run the set-up script:
    - If you are on _Windows 10 or higher_, run the `./pax/setup-windows.ps1` with _PowerShell_.
    - If you are on _Linux_, open your _terminal_ and use the `cd` command to move into the `./pax` folder, then run `sh setup-linux.sh`.
    - If you are on _macOS_, open your _terminal_ and use the `cd` command to move into the `./pax` folder, then run `brew install grep` and after it is finished, run `sh setup-macos.sh`.

### 6 

- Open your _terminal_ and run the [ModpackDownloader]:
    ```
    java -jar ModpackDownloader-<version>.jar modpack ..
    ```
    > **Note**
    > Make sure to replace the `<version>` with the correct version of ModpackDownloader.



<!-- Links: -->
[MultiMC]: https://multimc.org/
[Visual Studio Code]: https://code.visualstudio.com/
[Git]: https://git-scm.com/
[ModpackDownloader]: https://github.com/Joshyx/ModpackDownloader
