cask "covenant" do
  version "0.9.53"

  on_arm do
    sha256 "d6d57de9e7de5de68f0fce0265419ce2c9fbd785cc91fd0645a9ee4b28b3b6e6"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.53/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "7ec195fdd01fa49a758d9c3bf8f64e28d227adc193495ccc3e7dd3346a994b87"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.53/Covenant_#{version}_x64.dmg"
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
