cask "zimi" do
  arch arm: "arm64", intel: "x64"

  version "1.13.1"
  sha256 arm:   "1dec76a42827ff78f118af499d4b6c4685889d5fa75e5e0358bfc10cb0b72acb",
         intel: "7fc57d08bda8bab94b69b92857fb65185ef167e4b8ecead1ccf675b71389d902"

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
