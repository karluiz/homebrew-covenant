cask "covenant" do
  version "0.8.85"

  on_arm do
    sha256 "2ede01266388d60d262a17c4728d7de034bf791382dc155fc836b6fe21d25caf"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.85/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "2c46fb005c261cf9e466170ca2ee96a1176472eb4a50e5f9b039c1d34adeb4d7"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.85/Covenant_#{version}_x64.dmg"
  end

  name "Covenant"
  desc "AI-native terminal for macOS"
  homepage "https://covenant.uno"

  depends_on macos: ">= :ventura"

  app "Covenant.app"

  zap trash: [
    "~/Library/Application Support/com.karluiz.covenant",
    "~/Library/Preferences/com.karluiz.covenant.plist",
    "~/Library/Caches/com.karluiz.covenant",
    "~/Library/Logs/Covenant",
  ]
end
