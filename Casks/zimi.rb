cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.11.0"
  sha256 arm:   "d95c9dfe2a423a1c89faaa113e80796de4b88d7106c766f377c39cda51dcc6a5",
         intel: "9c8b3d3ebab2e1c174603a704f67c4a1405baf55f4607e716c416d754b41d8fb"

  url "https://github.com/epheterson/Zimi/releases/download/v#{version}/Zimi-#{version}-macOS-#{arch}.dmg"
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
