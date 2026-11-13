cask "zimi" do
  arch arm: "arm64", intel: "x64"

  version "1.15.7"
  sha256 arm:   "328b1254671e069c7c45d41ec8bc0d726615dcc3dcc8410af9d01deb512aa20c",
         intel: "fd4b604979552bcd93734892768e67fa9adaf54194b2d37d4f41987d64e2d8e4"

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
