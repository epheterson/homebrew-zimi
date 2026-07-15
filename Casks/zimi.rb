cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.7.0"
  sha256 arm:   "bc13321a744402867af6e6f23510d8a925e0c3aa1b84b592837796d2993ab73b",
         intel: "3098f965c56bdd1e3bae952a6613c3a0490352743776337beef38f6969955a8d"

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
