cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.6.3"
  sha256 arm:   "1cfd5f9884f564085fb92705a2ec96bf9c99c22df73cccb0b57aeeb662a71f1c",
         intel: "7fa0e75ab3b11676e2afe489ea38e013a0d611a24b91a7957c059954010d8f98"

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
