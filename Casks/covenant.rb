cask "covenant" do
  version "0.11.31"

  on_arm do
    sha256 "a38a6f29e0e086ebc92a7bcc14fa366749443b493193c9c94f7c7127a0c2a5e9"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.31/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "084637de40fcacfef0c7cd9b4cc060cca0c0d1f3b002cbf4131e6fb1fbb92cdd"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.31/Covenant_#{version}_x64.dmg"
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
