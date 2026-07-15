cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.7.0"
  sha256 arm:   "9f9b04b82f4cfc1b0395f072ba452fdc16ea3571b9258ed0c27664b73e88f7f1",
         intel: "d37dff15c72df98952c125ff10b1eec37255d532456020902d4e03c3875af7e4"

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
