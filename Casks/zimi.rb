cask "zimi" do
  arch arm: "arm64", intel: "x64"

  version "1.15.3"
  sha256 arm:   "eaa622b7bb3fb725a53eceb5ee90a4c2a1d10dc879988b47bbd4fca3ef1acc7e",
         intel: "2f6e0bf4a60f8bbfbca2680f99dd9182b80ec2f96c10474e5084f75b984a2c10"

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
