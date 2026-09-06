cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.9.1"
  sha256 arm:   "4ab366a348ee3fd637dd2b8a1ca74d74f5f752c38ebe183f11c812be28bf98c8",
         intel: "a977134bc2b3aa9da52edd60727f10c874dbe45b9343bd302c2669dfceee35f6"

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
