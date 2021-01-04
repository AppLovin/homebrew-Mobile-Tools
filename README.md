# Homebrew Mobile Tools

This repository contains the AppLovin Mobile team's homebrew installable tools.

## Installation

Note: If your macOS version is below Catalina (10.15), you may be prompted to install xcode command line tools.

Tap into the repository with:

```bash
brew tap AppLovin/homebrew-Mobile-Tools
```

Then install any tools with:

```bash
brew install <formula>
```

## Updating

Update a specific tool with:

```bash
brew upgrade <formula>
```

## How To Add Tools

Create a script and remove any file extension from the name (ie. `debugapk.sh` -> `debugapk`).

Add the script to the `homebrew-Mobile-Tools` directory (cannot be nested in another directory).

Create a new homebrew formula following the template below and add it to the `Formula` directory.

```rb
class Toolname < Formula
  # Description
  desc "Give a description of the tool here"

  # Homepage
  homepage "https://github.com/AppLovin/homebrew-Mobile-Tools"

  # Create a release for the tool, then copy the tar link and paste it here
  url "https://github.com/AppLovin/homebrew-Mobile-Tools/archive/v1.0.tar.gz"

  # Update the tool version here
  version "1.0"

  # Commands
  # This installs the tool in your user bin: /usr/local/bin/toolname
  def install
      bin.install "toolname"
  end
end
```

Tap into the repository and install the tool.

Add a new section to this `README.md` to help users install and use the new tool.

## How To Update Tools

After making changes to a tool, create a new release for the tool.

Update the `url` in the tool's associated formula with the new release tar link and the `version` as well.

Tap into the repository and install or upgrade the tool.

## Tools

### debugapk

This script is used to make an APK debuggable and usable with Charles.
It will inject a new `network_security_config.xml`, update the Android Manifest with:

`android:debuggable="true"`

`android:name="applovin.sdk.verbose_logging" android:value="true"`

and rebuild and resign the provided APK, placing it in a build directory.

Steps:

1. Install apktool if not already installed (brew is recommended) - <https://ibotpeaches.github.io/Apktool/install>

    `brew install apktool`

2. Check and ensure your `apktool` version is `2.4.1` or higher with:

    `apktool -version`

3. Tap into this repository and install this tool:

    `brew tap AppLovin/homebrew-Mobile-Tools`

    `brew install debugapk`

4. Run the following command from the terminal in the working directory containing the APK:

    `debugapk -i <APK file name> -o`

5. Run the following command to install the rebuilt APK (delete device's previously installed APK).

    `adb install build/<APK file name>`

### aldroid

This tool is used to interact with Android apps, making them debuggable and useable with Charles.
It supports split APKs as well as handling OBBs (see Use cases below for detailed information).

Steps:

1. Install apktool if not already installed (brew is recommended) - <https://ibotpeaches.github.io/Apktool/install>

    `brew install apktool`
    
2. Install both the Android SDK Tools and Android Build Tools and make sure they are available in your path

3. Tap into this repository and install this tool:

    `brew tap AppLovin/homebrew-Mobile-Tools`

    `brew install aldroid`

4. See Use cases below for more information on usage

#### Use cases
##### Charlesing an app on the device
usage: `aldroid-running-app`

Assuming you already have the device on your phone but don't know the package name, we can automatically make the running app charlesable with this command.

It will detect the currently open app and transform it to make it charlesable as well as reopen it after reinstalling.

Also supports `--use-aapt2` option to use aapt2 to rebuild.

##### Charlesing an APK send by a developer
usage: `aldroid d --apk <package_name> [options] [splits]`

It will create a charlesable APK at the same location by appending `_debuggable` to its file name.

Setting the `-i/--install` flag will automatically install the debuggable apk on the connected device.

Otherwise you will have to install the app either via `adb install <path_to_apk_debuggaple>` or by transfering the APK to the device and opening it there.

Also supports `--use-aapt2` option to use aapt2 to rebuild.

##### Pulling APKs and/or OBBs from the device
usage: `aldroid pull [--apk][--obb] [options] <package_name>`

Pulls the APK(s) and/or OBB(s) associated with that package name from the device.
Set `-o <output_directory>` to set the output directory in which to store the files. Defaults to `/tmp/<package_name>`

##### Charlesing an app on the play store
usage: `aldroid d [options] <package_name>`

If an app is on the play store and you want to open the mediation debugger or inspect network traffic, all you have to do is install it on your device and call this one command:

It will pull the *apk(s)* and *obb(s)* from the device, make them charlesable, uninstall the app from the device, reinstall the apk(s) and push the obb(s) back to the device.

Assuming you have a link to the google play store like this: http://play.google.com/store/apps/details?id=com.example.app

You can see the package name at the end of the link; in this case `com.example.app`.
So the command would be: `aldroid-package com.example.app`

Also supports `--use-aapt2` option to use aapt2 to rebuild.
