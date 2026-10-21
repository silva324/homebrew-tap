cask "decktap" do
  version "0.8.0"
  sha256 "77a5a17c31006eafdbd1b23de7d8eef90f0b5992807d32901dbd4e7f7b08c9bd"

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
