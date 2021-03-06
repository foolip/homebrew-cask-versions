cask "mi-beta" do
  version "3.5.2"
  sha256 "19646316623e83359b2f5c7096270e29ddc9b7db3b2f53d1350214bad3e23226"

  url "https://www.mimikaki.net/download/mi#{version}.dmg"
  appcast "https://www.mimikaki.net/download/appcast_beta.xml"
  name "mi"
  desc "Text editor"
  homepage "https://www.mimikaki.net/download/beta.html"

  conflicts_with cask: "mi"

  app "mi.app"

  zap trash: [
    "~/Library/Caches/net.mimikaki.mi",
    "~/Library/Preferences/net.mimikaki.mi.plist",
  ]
end
