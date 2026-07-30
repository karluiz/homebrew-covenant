cask "covenant" do
  version "0.11.10"

  on_arm do
    sha256 "49d953ca8d3ff9f94a389369e484f56667d8059c8ee56a2c81739063e5ef188a"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.10/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "a1ad13ee98c3ba283ffd86ee6c457df86305d21a51839efad2677e630b5176dd"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.10/Covenant_#{version}_x64.dmg"
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
