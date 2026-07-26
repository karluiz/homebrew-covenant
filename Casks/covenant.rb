cask "covenant" do
  version "0.9.71"

  on_arm do
    sha256 "df9e6fb6044a0b1863027e18f66abbb1654abf738120d182e2dabb5a6a1a0713"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.71/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "5e27df7e5b656375ea491ccccc58524a7dcabbaa4ff3507868fd4a699d79f765"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.71/Covenant_#{version}_x64.dmg"
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
