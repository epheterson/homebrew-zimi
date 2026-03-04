cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.5.0"
  sha256 arm:   "d791b9a2d97e7372fda287dd6c79f47f550b5abb642bd868c1171276b0e9809b",
         intel: "abfe0eea200bf95e86ec1f1961f8518bd0b613cefe7727a977f7345cd1d433d1"

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
