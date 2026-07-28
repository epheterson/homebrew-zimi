cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.8.0"
  sha256 arm:   "6d8ef05208313afc5ec5b04e5e97cc4776fc3ca444b57084c7727cc8319b376b",
         intel: "1854315dd436e03c1601477768fd079b0cd4fb2ff9b6841f0cec8dacca03e3a0"

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
