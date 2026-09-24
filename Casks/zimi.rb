cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.10.2"
  sha256 arm:   "d6b90f073a10ac072c21c79528d260cc5e7819a293c9afaf537846ff43f63749",
         intel: "3726439322aeaa9535724dccf5e3b3a6b11197e75e8e7ba3c2eec5a75a48e905"

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
