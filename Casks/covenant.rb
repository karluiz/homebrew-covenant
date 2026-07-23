cask "covenant" do
  version "0.9.64"

  on_arm do
    sha256 "2183737405457742024e493b7fb7c520197b56836172881929ae01f70111ef3d"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.64/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "7e8d6a0c32a2e1285d4c722cfab4f2a0cbddfa3091ea80e12126288818c90d43"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.64/Covenant_#{version}_x64.dmg"
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
