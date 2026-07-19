cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.7.3"
  sha256 arm:   "8e069f9b2139e918839496534615d89bb57dd9cb14351c346d4b22aa8108ac61",
         intel: "37a28b6c993d4667a7c913fb8992dd5215fee2f155796c32e1962db29dbf520a"

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
