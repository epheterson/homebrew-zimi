cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.10.1"
  sha256 arm:   "107fc0a39ec1c23a748e4bd8eb402ce33cd376411c0eb5cfb18d7f1a003793b9",
         intel: "61e62df11234cdd2125bfed43556e3623a4e3d67f778edd6fe29e86cbeb9028a"

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
