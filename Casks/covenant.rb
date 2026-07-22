cask "covenant" do
  version "0.9.59"

  on_arm do
    sha256 "f46cfa6807cea2f7ce5206266d4ed6dc4c967ad6a822339924749d7fccbea9ea"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.59/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "8b7d112abffc00b7b9c867226154df74bde7d38beef72b75d23757236802259e"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.59/Covenant_#{version}_x64.dmg"
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
