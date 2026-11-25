cask "zimi" do
  arch arm: "arm64", intel: "x64"

  version "1.16.1"
  sha256 arm:   "7339de976b61f205875f98ccead5d79fed25bd59b0cd25fd879005e712fac102",
         intel: "571fc16d76e6c4ba5aface4387959b61312fcdf30b9f8b3208bad55d06917697"

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
