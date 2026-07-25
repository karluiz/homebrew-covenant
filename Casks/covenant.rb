cask "covenant" do
  version "0.9.69"

  on_arm do
    sha256 "4a64cd8c7fb9f59927a2c916bac703e954602622321783c6cb1f7a59c9d1356f"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.69/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "43b966781091ed0115c3f46ef6a42de4018ebce95ed6160f386c30485d01f197"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.69/Covenant_#{version}_x64.dmg"
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
