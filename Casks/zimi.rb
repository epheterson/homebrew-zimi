cask "zimi" do
  arch arm: "arm64", intel: "x64"

  version "1.14.1"
  sha256 arm:   "cc3daddf391d772f330fbb245b0412fdc5d7234606a5682f3051e4405705d350",
         intel: "b27f0f076a286ba121c3fb17555fe9b17b253f692a56296b1414a2dae42a121a"

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
