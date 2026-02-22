cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.4.0"
  sha256 arm:   "d6c3940bb324745d38afc40bdfbe91a9ec1c3419d0a77de43d61aa2a237b0ba8",
         intel: "c98bcd5171d3eaedf718314d352aec7281a1edefa9c6b2826b2f23fc075033c0"

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
