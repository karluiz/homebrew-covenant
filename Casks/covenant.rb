cask "covenant" do
  version "0.11.34"

  on_arm do
    sha256 "04cd288298cad3a5406f2d476ef632d2c7497f443dac85a30f8ca39a22ff0c74"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.34/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "68322f76a75fbf0f40a38e0f94e4f72ad7ca2879c353ab3b78cd81d98af37592"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.34/Covenant_#{version}_x64.dmg"
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
