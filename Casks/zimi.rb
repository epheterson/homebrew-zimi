cask "zimi" do
  arch arm: "arm64", intel: "x64"

  version "1.15.5"
  sha256 arm:   "db2703ce28ff142a3d6bb5eb1bf6579bee3366bfc19bf596f21cff2cb6bffa6d",
         intel: "f70d98df50ce0989102ab1188a5355c011f47167cd73c3666f535deb7ef38de3"

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
