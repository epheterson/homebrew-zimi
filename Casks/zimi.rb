cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.3.0"
  sha256 arm:   "6c6fe2ed711f10a8e28e251d52fb30cbb45d99671eaa1600a6190e74c0ec1b4f",
         intel: "0ce2383b930e12f16e0f034b8b29e9e1f504313d203d4ce63bae00b6b94513c2"

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
