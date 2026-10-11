cask "zimi" do
  arch arm: "arm64", intel: "x64"

  version "1.13.2"
  sha256 arm:   "bcccdb2cfc2fb472423ab6106dd2ea3d1597a1e53528e2cd0e347e1b1e2e40a3",
         intel: "6348041b7972ae8693474a27597415791c0f3481b63c5eb5e0904b405ead64ce"

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
