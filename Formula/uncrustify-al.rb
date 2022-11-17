class UncrustifyAl < Formula
    version "0.1.0"

    desc "This is a version of the uncrustify tool built off of that repo's latest master."
    homepage "https://github.com/AppLovin/homebrew-Mobile-Tools"
    url "https://github.com/AppLovin/homebrew-Mobile-Tools/releases/download/uncrustify-al-v0.1.0/uncrustify-al-v0.1.0.tar.gz"

    def install
        bin.install "uncrustify-al"
    end
end
