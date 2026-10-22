cask "decktap" do
  version "0.10.1"
  sha256 "cb05c1bc0e79f077c8ecdade20db0b9ba79d29800b61621088334ed3809b65a8"

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
