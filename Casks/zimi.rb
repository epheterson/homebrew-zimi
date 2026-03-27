cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.6.1"
  sha256 arm:   "81f81f179bce1b290ed6a5a95f29421a0cb82eaf0d271329fd31b12dce2d23aa",
         intel: "a3eb76803f33a5473a82203e5e11a9e4409d08547b1cacd0884af22953f5d7a1"

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
