cask "decktap" do
  version "0.11.1"
  sha256 "fcaf1d5525bdf21ca481cfbcff26f05634649ca3ffc6d015f32497f5199812e0"

  url "https://github.com/silva324/DeckTap/releases/download/v#{version}/DeckTap-v#{version}-macOS-Universal.dmg"
  name "DeckTap"
  desc "Control presentations from your phone with notes and laser pointer"
  homepage "https://github.com/silva324/DeckTap"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "DeckTap.app"

  zap trash: [
    "~/.decktap",
    "~/Library/Application Support/DeckTap",
    "~/Library/Preferences/com.decktap.plist",
  ]
end
