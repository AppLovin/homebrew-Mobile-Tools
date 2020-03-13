# Homebrew Mobile Tools

This repository contains the AppLovin Mobile team's homebrew installable tools.

## How To Install

Tap into the repository with:

```bash
brew tap AppLovin/homebrew-Mobile-Tools
```

Then install any tools with:

```bash
brew install <formula>
```

## How To Add Tools

Create a script and remove any file extension from the name (ie. `debugapk.sh` -> `debugapk`). Then add it to the `Tools` directory.

Create a new homebrew formula following the template below and add it to the `Formulae` directory.

```rb
class Toolname < Formula
  # Description
  desc "Give a description of the tool here"

  # Homepage
  homepage "https://github.com/AppLovin/homebrew-Mobile-Tools"

  # Create a release for your tool, then copy the tar link and paste it here
  url "https://github.com/AppLovin/homebrew-Mobile-Tools/archive/v1.0.0.tar.gz"

  # Update the tool version here
  version "1.0.0"

  # Commands
  # This installs the tool in your user bin: /usr/local/bin/toolname
  def install
      bin.install "toolname"
  end
end
```

Now the tool should be good to go. Tap into the repository:

```bash
brew tap AppLovin/homebrew-Mobile-Tools
```

Then install the tool with:

```bash
brew install <formula>
```
