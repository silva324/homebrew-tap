cask "decktap" do
  version "0.8.0"
  sha256 "f9aa6b2a54dbd5868315ddba9839b230585d756cdf196eac4967079e314d2092"

  url "https://github.com/silva324/DeckTap/releases/download/v#{version}/DeckTap-v#{version}-macOS-Universal.dmg"
  name "DeckTap"
  desc "Control presentations from your phone with notes and laser pointer"
  homepage "https://github.com/silva324/DeckTap"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "DeckTap.app"

  zap trash: [
    "~/.decktap",
    "~/Library/Application Support/DeckTap",
    "~/Library/Preferences/com.decktap.plist",
  ]
end
