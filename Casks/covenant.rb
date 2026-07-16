cask "covenant" do
  version "0.9.31"

  on_arm do
    sha256 "656601d9b4866a4e614709a460e65121ff1763d54bc350f8d5c44c0312db2104"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.31/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "ac2eb951e51f39285e180e311db5e25daebc91c5acc9e25e4c62175c508e7e9b"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.31/Covenant_#{version}_x64.dmg"
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
