cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.9.3"
  sha256 arm:   "71266b90aa12084bb56098ef10d4b93436b248e21f359b7aa62ceb2e2e9944de",
         intel: "c8ae10c158adef8a0ffdd8a965f7ff6b3c65b4662d2f03bb265b4da2627c5536"

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
