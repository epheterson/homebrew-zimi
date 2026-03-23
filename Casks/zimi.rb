cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.6.0"
  sha256 arm:   "1c723500c1777efe3c30d2d9cc448228aed301ad6d8df79377e7f82edc74e03d",
         intel: "2db0279ea279d40d5343a7990fdc199a5607a40a8252acba0940ae8f13e37707"

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
