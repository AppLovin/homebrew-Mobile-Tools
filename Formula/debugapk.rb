class Debugapk < Formula
  # Description
  desc "This script is used to make an APK debuggable and usable with Charles"

  # Homepage
  homepage "https://github.com/AppLovin/homebrew-Mobile-Tools"

  # URL for downloading debugapk
  url "https://github.com/AppLovin/homebrew-Mobile-Tools/archive/debugapk-v1.2.tar.gz"

  # Version
  version "1.2"

  # Commands
  def install
      bin.install "debugapk"
  end
end
