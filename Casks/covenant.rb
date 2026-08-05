cask "covenant" do
  version "0.11.30"

  on_arm do
    sha256 "1f9d2dd511d62f24e700e5778f61e67d486cde9912de2242924a2618b26e8f74"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.30/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "85abb187a7665a9d593e54627f8f74b59de3238aea3e3a4185e7384c7908894e"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.30/Covenant_#{version}_x64.dmg"
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
