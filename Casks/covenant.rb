cask "covenant" do
  version "0.11.24"

  on_arm do
    sha256 "32fb63ea482db9c1362e396a0681714773138bb5a7e230c56a93faae8e951711"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.24/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "13d30d642c2514c672b068ba916908ee2baae5350643fab19c826172ff3320b1"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.24/Covenant_#{version}_x64.dmg"
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
