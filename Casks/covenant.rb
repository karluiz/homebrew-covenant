cask "covenant" do
  version "0.9.17"

  on_arm do
    sha256 "1da790cd855e039ca8e3cfca066088d7f48983d814b90d5edc7e22a89a683b7a"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.17/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "9355d047b419cc092527207aa0c5680b295a753bb4917fc25301ac7f71e0302b"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.17/Covenant_#{version}_x64.dmg"
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
