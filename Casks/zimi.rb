cask "zimi" do
  arch arm: "arm64", intel: "x64"

  version "1.14.0"
  sha256 arm:   "2e4ef0ea8ce85e5024e59ec22f7f61456e06ad200bfcd20c1160a5b298e3632b",
         intel: "bd4c9436b3396647e3ac98b4a9d42ca4aa1fc8a86a5e769e9d8a8b4db2dc43d0"

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
