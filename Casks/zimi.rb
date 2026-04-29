cask "zimi" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.6.5"
  sha256 arm:   "db5f53cccb975c48fba764d6d40c6398d9fe86786e16b0e4cb9f41675c43c0c3",
         intel: "2e9f948d91f42b988bc5841cd7c3345e2718670590de13f3207d738f584ce8ed"

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
