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

## How To Update Tools

After making changes to a tool, create a new release for the tool.

Update the `url` in the tool's associated formula with the new release tar link and the `version` as well.

Tap into the repository and install or upgrade the tool.
