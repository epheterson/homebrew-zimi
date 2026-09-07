cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.9.2"
  sha256 arm:   "a3a0205ae1cb072e002fc00c72e60fdb437abfe0af0c31e3197f84be08348f2c",
         intel: "4888d5089c4eb194402f98f605a82504fa2c07fc921c4347d04d2e68312ef7a8"

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
