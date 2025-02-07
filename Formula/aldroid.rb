class Aldroid < Formula
    version "0.4.3"

    desc "This tool transforms Android APKs to make them debuggable and MITMable/Charlesable"
    homepage "https://github.com/AppLovin/homebrew-Mobile-Tools"
    url "https://github.com/AppLovin/homebrew-Mobile-Tools/archive/aldroid-v#{version}.tar.gz"

    def install
        bin.install "aldroid"
        bin.install "aldroid-running-app"
    end
end
