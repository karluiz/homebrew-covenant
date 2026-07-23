cask "covenant" do
  version "0.9.62"

  on_arm do
    sha256 "a5cc4e61506691a25a8d04099355a23ad7d1639a1b2c2d63d714957ace75092b"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.62/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "ffdc8d26440aa5b06b2f2f4c83706a485358a102eff8e96d1b304e99d654d9e7"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.62/Covenant_#{version}_x64.dmg"
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
