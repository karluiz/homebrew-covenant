cask "covenant" do
  version "0.9.15"

  on_arm do
    sha256 "7f32ef458a9cbe674ec7c280ab50c8d73d55e62d1e750d72ff5db9b6801902b6"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.15/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "967dbfce538efdb17d4b6fa0a5501c0f95346dac4c55bf9f118c364afacef3f2"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.15/Covenant_#{version}_x64.dmg"
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
