cask "zimi" do
  arch arm: "arm64", intel: "x64"

  version "1.15.2"
  sha256 arm:   "43aa636779f582e884116326a91e79a24fcdb431f5ff12de75a121c0017cd487",
         intel: "e418ad766b73bde6c25c743ddb1d07f4a68ed7fcff2722802c357c4c889c6e99"

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
