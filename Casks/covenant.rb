cask "covenant" do
  version "0.9.78"

  on_arm do
    sha256 "0ad49164e06b443f708b45d93a5f027bf866cc16abf0b81d8ad0facd67ef06c8"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.78/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "45a60a22f6a55fa75d23f00570931d16a154abeaf90034fb51c4fd27dff1a1ab"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.78/Covenant_#{version}_x64.dmg"
  end

  name "Covenant"
  desc "AI-native terminal for macOS"
  homepage "https://covenant.uno"

  depends_on macos: ">= :ventura"

  app "Covenant.app"
  binary "#{appdir}/Covenant.app/Contents/Resources/covenant"

  zap trash: [
    "~/Library/Application Support/com.karluiz.covenant",
    "~/Library/Preferences/com.karluiz.covenant.plist",
    "~/Library/Caches/com.karluiz.covenant",
    "~/Library/Logs/Covenant",
  ]
end
