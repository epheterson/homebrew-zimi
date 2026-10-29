cask "zimi" do
  arch arm: "arm64", intel: "x64"

  version "1.15.0"
  sha256 arm:   "168e5a27daf0459d203873dffade63f8be20ea5fb19dde2e04f6348e5d39c9b9",
         intel: "f77303b4e91a70d9e9e14514bf4fad6132283ff9d4779fac9c3fb9d34a47f5b3"

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
