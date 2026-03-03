cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.5.0"
  sha256 arm:   "16d261ed414c9d17ee6a4a37ebedbcd78937aa738dd6295a2869b489be1a7099",
         intel: "ebd20cb0bea8fe19744816d8f8429eee57e770afc60915835d8d3bb2129a11a3"

  url "https://github.com/epheterson/Zimi/releases/download/v#{version}/Zimi-#{arch}.dmg"
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
