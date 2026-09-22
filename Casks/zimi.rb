cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.10.0"
  sha256 arm:   "feacf601ccd9730463cc2d049321e8d44308d27d4a94d9ed0c5c6fe16e668104",
         intel: "67142d14427df6b8f70dcf324f11517eaf8ce8b98bf1c151164af0fb7f0ac8cb"

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
