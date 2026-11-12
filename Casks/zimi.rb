cask "zimi" do
  arch arm: "arm64", intel: "x64"

  version "1.15.6"
  sha256 arm:   "e01b4d27b84b7bae65645b917c3fcadc0c18d1c17dfd7f5068808c47d92998b2",
         intel: "3c33eeb6b9723af6dcab2a832ac543249d1fd56e4649464b4b4c1d6ac15b9b59"

  url "https://github.com/epheterson/Zimi/releases/download/v#{version}/Zimi-#{version}-mac-#{arch}.dmg"
  name "Zimi"
  desc "Offline knowledge server for ZIM files"
  homepage "https://github.com/epheterson/Zimi"

  depends_on macos: ">= :ventura"

  app "Zimi.app"

  zap trash: [
    "~/.config/zimi",
    "~/Library/Preferences/com.epheterson.zimi.plist",
  ]
end
