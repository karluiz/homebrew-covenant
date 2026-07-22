cask "covenant" do
  version "0.9.57"

  on_arm do
    sha256 "68f4fae9f589cbec17390c908cdd242d85deb9d4793e34aa245833ccad062d1c"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.57/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "41b346fbc180253a473338506842f6352043741c538ffc4ad4d0d16bcc922b58"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.57/Covenant_#{version}_x64.dmg"
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
