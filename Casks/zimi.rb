cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.10.3"
  sha256 arm:   "a817c246354b87f12b2408ab04d5a3ee20847ad35abb6419a7fa4d799d2baa08",
         intel: "a6f9e01cfbab071e1eb726a80ecd747830b550c10b25daede0e7d8da1b803c22"

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
