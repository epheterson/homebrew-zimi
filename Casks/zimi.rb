cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.5.0"
  sha256 arm:   "a6aa021a48d0c0c17b4d5fba4edc10af6e54107a596872eeba0598c5f92afee8",
         intel: "1ee7d6308692f634d1fa10234ab50fcc0f3d7f9fac2b28e43bdc660c46e9beb2"

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
