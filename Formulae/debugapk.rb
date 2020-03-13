class Debugapk < Formula
  # Description
  desc "This script is used to make an APK debuggable and usable with Charles"

  # Homepage
  homepage "https://github.com/AppLovin/homebrew-Mobile-Tools"

  # URL for downloading debugapk
  url "https://github.com/AppLovin/homebrew-Mobile-Tools/archive/v1.0.0.tar.gz"

  # Version
  version "1.0.0"

  # Sha256 Key
  sha256 "f32f518c180cae5a3c6eed3a613bab15a3f79589af7602f3cd4b2487d15eb646"

  # Commands
  def install
      bin.install "debugapk"
  end
end
