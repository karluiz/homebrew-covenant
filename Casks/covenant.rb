cask "covenant" do
  version "0.11.1"

  on_arm do
    sha256 "e0156597499ea1b74854ece89b406e33c6a3b77adfb1787b25d1777ae3da9ad2"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.1/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "8de2c67bfd72aae290973af5a2f38b1c827f114a97aa50f89808d9c2c0dba931"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.1/Covenant_#{version}_x64.dmg"
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
