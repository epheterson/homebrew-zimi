cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.7.0"
  sha256 arm:   "4d9cbbbc83a0e03a873582635aa16292f5a2c4edbca667ee07869a242d41eab5",
         intel: "23b3acd133c65d500ea8bc0da153a1a020dffe58f73976889637b72bbb510e84"

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
