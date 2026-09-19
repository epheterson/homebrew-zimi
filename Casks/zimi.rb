cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.9.6"
  sha256 arm:   "23d0e4f2ece5903ed80264f0d3d37750cfbbc742abece12c8e5487f9370ca274",
         intel: "8107c171504af250449bec9c134b8a6356bdc93683ef792617a9bd175fae79e1"

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
