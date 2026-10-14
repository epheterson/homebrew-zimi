cask "zimi" do
  arch arm: "arm64", intel: "x64"

  version "1.13.3"
  sha256 arm:   "2e872f8a9f05d55447fe95ea9a728b62fd3a9e5116144a7e8c28cf2c336f5950",
         intel: "77f6581610c19ef3ed0f57558666e4bb288be5d10db826a0fb7616368877c6c2"

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
