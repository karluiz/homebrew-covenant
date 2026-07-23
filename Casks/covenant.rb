cask "covenant" do
  version "0.9.63"

  on_arm do
    sha256 "385468571cde9cc5c5d7d53e94689ff6b90a4d57b418515ba3f6e03f5dc068e9"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.63/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "8d5c11ff547c4ec92374fb55942d5ac525d5907ee6090bf83eea0081614633f8"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.63/Covenant_#{version}_x64.dmg"
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
