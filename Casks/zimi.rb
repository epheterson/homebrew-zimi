cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.9.5"
  sha256 arm:   "0328271f41faae0c9cb2246fd062cbca038b41f5e4c04bab2ae0d4f5f205538a",
         intel: "f838b4080b173056dfe6d2d36dd88dbf041a6ff35215edcfec94fcc24e363bc8"

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
