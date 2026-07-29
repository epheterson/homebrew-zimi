cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.8.1"
  sha256 arm:   "c5bf9f444fc391224ab35fb3e4aa18f0e63416b455693902dd9f6d1c838c9485",
         intel: "dd80dd2f3b3b8f432598a4bbb0ecc9e4f4590820bba9b2a62b3296e9fb0be6a0"

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
