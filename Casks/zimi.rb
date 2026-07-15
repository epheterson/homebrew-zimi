cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.7.1"
  sha256 arm:   "196dfa5ff1210a63bffd3604a5d38662731f3512da0322af8bf8433884c424fe",
         intel: "858f87e73c70a950259db30e8ba1c5386e46470b5627f6c9762de89f112a4d01"

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
