# Humble Lumpia

A 'package manager' for Glorious Eggroll's custom proton build.

## Installation

There are currently a couple of ways to install `humble-lumpia`.

**NOTE:** Installing `humble-lumpia` and its dependencies is not sufficient to 
run the versions of `proton-ge-custom` that `humble-lumpia` will download. Be 
sure to reference the [README](https://github.com/GloriousEggroll/proton-ge-custom/)
in `proton-ge-custom` to determine what other dependencies your system requires.

### From AUR

If you are running **Arch Linux**, you can also download and install the 
package maintained by [NINNiT](https://github.com/NINNiT) from the [AUR](https://aur.archlinux.org/packages/humble-lumpia-git/). 

If you are already using `yay` as an AUR helper, then you can
run the following command to install humble-lumpia.

```shell
yay -S humble-lumpia-git
```

If you are unfamiliar with installing packages from the AUR, you can 
review the process [here](https://wiki.archlinux.org/title/Arch_User_Repository#Installing_and_upgrading_packages)
in the Arch Wiki. 

### From Source

It is also possible to easily install the utility from source. If you wish to 
do so, please ensure that you have the appropriate dependencies to 
[build](#build-dependencies) and [run](#runtime-dependencies) the application 
as mentioned below.

```shell
sudo make install
```

#### Build Dependencies

* make

#### Runtime Dependencies

* curl
* jq

## Uninstallation

```shell
sudo make uninstall
```

## Usage

The following are a full list of the commands that can be run

### Update the Local Cache

```shell
humble-lumpia update
```

### List Versions Available for Install

```shell
humble-lumpia ls
```

### List Installed Versions

```shell
humble-lumpia ls --installed
```

### Install Latest Build

```shell
humble-lumpia install latest
```

### Install Specific Build

```shell
humble-lumpia install 6.10-GE-1
```

### Uninstall Specific Build

```shell
humble-lumpia rm 6.10-GE-1
```
