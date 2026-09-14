cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.9.4"
  sha256 arm:   "eb67579750a58a7e5dbf21a6c743f197b062d5d5df5a6748ca229124f5225028",
         intel: "b8c94e112e778a77fc31ad52a30df430ae96ff558bad8357234d4618bf8bb3b9"

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
