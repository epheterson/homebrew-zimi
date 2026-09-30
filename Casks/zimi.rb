cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.12.0"
  sha256 arm:   "bbbd19494d73c7668776d0cc88687a22c7d7288716db525c7940a2fba613f64c",
         intel: "942c3a2f3366ac947815fd424118e1f88699893f1184ee7043bca890ff1c359b"

  url "https://github.com/epheterson/Zimi/releases/download/v#{version}/Zimi-#{version}-macOS-#{arch}.dmg"
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
