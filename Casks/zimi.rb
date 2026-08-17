cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.8.2"
  sha256 arm:   "5a1cb77e3e4e971934a7c58b368740844fc0c5d5e2dc4b28a4e3a9d227ce2631",
         intel: "cc31749f70f83f093b251c2a8cf6c0cd585218b86b5f567001e946ef225a5d52"

  url "https://github.com/epheterson/Zimi/releases/download/v#{version}/Zimi-#{arch}.dmg"
  name "Zimi"
  desc "Offline knowledge server for ZIM files"
  homepage "https://github.com/epheterson/Zimi"

  depends_on macos: :ventura

  app "Zimi.app"

  zap trash: [
    "~/.config/zimi",
    "~/Library/Preferences/com.epheterson.zimi.plist",
  ]
end
