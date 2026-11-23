cask "zimi" do
  arch arm: "arm64", intel: "x64"

  version "1.16.0"
  sha256 arm:   "2a2ffa9f2987d8f361a09009f7a5265cf3a74138164a9cd8a909cbbf7c25fd8a",
         intel: "d18a993b3fcf890a6d21912287776c1cad0b50f8e7f22af5bd36514313fe8be9"

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
