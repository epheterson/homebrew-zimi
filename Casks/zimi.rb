cask "zimi" do
  arch arm: "arm64", intel: "x64"

  version "1.13.0"
  sha256 arm:   "c31e33e1a93b8b0633f5eeae71278240fd4773cefa630d4fd69653752cc78989",
         intel: "eadbaf229f80af93d694ea1ea91a60142e1d0fddeba2a0f599b2c6f1d2996c31"

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
