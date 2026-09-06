cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.9.0"
  sha256 arm:   "daec60b8a688714d6899004930f421562c1a5dd2e3e93caf2d1389886a408b5f",
         intel: "cfcf6be1ed245749fb09340cbe6849533caea7bcd49faff6e952fea463552cf6"

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
