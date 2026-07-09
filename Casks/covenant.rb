cask "covenant" do
  version "0.8.144"

  on_arm do
    sha256 "ea3b70bb241196e98340f9a338d2b4fef6b32ba007810205f5c9dab1a57f1061"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.144/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "29286e5d0c9cb7698e3faecfad2c9e79deb6c22845fe448ba140f49f01dcea8b"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.144/Covenant_#{version}_x64.dmg"
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
