cask "covenant" do
  version "0.9.77"

  on_arm do
    sha256 "9f50cf6694d6ce1603bf394635520d1852ea673e14de9ab41e373d3f49e4b05c"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.77/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "a818ec28a2b0b5323517b28d03597ceeffe5f29b87af7d9e4e0454babce2a616"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.77/Covenant_#{version}_x64.dmg"
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
