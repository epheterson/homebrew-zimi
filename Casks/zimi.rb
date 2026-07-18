cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.7.2"
  sha256 arm:   "3c99a8d1570e5f09d3dd420b9d38a7cedc688b1e3fd65c08037cb5c7557a1b4f",
         intel: "fe7090b72bebdd351dcc8f21eb6dd3ec2fd56490bb6c4328c6b5de9d60f819cc"

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
