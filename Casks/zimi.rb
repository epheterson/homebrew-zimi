cask "zimi" do
  arch arm: "arm64", intel: "x64"

  version "1.15.4"
  sha256 arm:   "d4befc3899b05c25242963194c60a7b39bcff0b554cadd1077119b783c7d9f97",
         intel: "b6de177bbceb27434c51a44a046e2948eea3cf380097fc81c5bd9785d6bb38ff"

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
