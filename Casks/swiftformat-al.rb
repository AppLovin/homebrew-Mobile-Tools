cask "swiftformat-al" do
  version "0.1.0"
  sha256 "0b953f35b253f88b2934dff820f75a95450b90c394188b82fbf7245b51c7ae58"
  
  url "https://github.com/AppLovin/homebrew-Mobile-Tools/releases/download/swiftformat-al-v#{version}/SwiftFormat-for-Xcode.zip"
  name "swiftformat-al"
  desc "This is a version of SwiftFormat for Xcode, an editor extension forked from https://github.com/nicklockwood/SwiftFormat"
  homepage "https://github.com/AppLovin/homebrew-Mobile-Tools"
  
  app "SwiftFormat for Xcode.app"
end
