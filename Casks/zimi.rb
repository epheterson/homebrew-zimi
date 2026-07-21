cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.7.4"
  sha256 arm:   "86ac58d6431d0f27c401507970957b97337933db3df01a0d86c6997baaccdd16",
         intel: "abd28ebd855bf65328d603f35df9e45b86f57a986b31b115935e1c54e0994abe"

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
