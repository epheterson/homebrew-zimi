cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.6.2"
  sha256 arm:   "a6797cbb23fc528f1196c2c79dc40e2e4376cb7656bff829b20d661572f9e587",
         intel: "5f8d834b5be9fcffd822ca8c47aa5f508587ce26a139205b0d780be35252782d"

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
