cask "zimi" do
  arch arm: "arm64", intel: "x64"

  version "1.15.1"
  sha256 arm:   "ced3e24f2b555d4ad72fb4a94402d4df6f67e7401551a923c4d543419237e47a",
         intel: "1813fcbcab0bf08a1db952e89917ba48d4c5a24b117b047c46714556c556267f"

  url "https://github.com/epheterson/Zimi/releases/download/v#{version}/Zimi-#{version}-mac-#{arch}.dmg"
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
