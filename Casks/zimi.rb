cask "zimi" do
  arch arm: "arm64", intel: "x64"

  version "1.13.0"
  sha256 arm:   "2e44da11942de0242622b85bc3c56b546596bf25dcc8b749c5eab4ed45442900",
         intel: "e172c6567b18d280a9383f2b8e2e389f87bf1b6b410d2a1966c3de316358c825"

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
