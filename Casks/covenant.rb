cask "covenant" do
  version "0.11.2"

  on_arm do
    sha256 "56b31016be5761baffaa171b157e3e6e44313b1a28e30bad03d91127ea677bcd"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.2/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "71ae711c0bc200e1e9b2a1e17d4a2c06957eddab04210157e584934874e0c577"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.2/Covenant_#{version}_x64.dmg"
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
