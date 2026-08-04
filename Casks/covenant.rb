cask "covenant" do
  version "0.11.28"

  on_arm do
    sha256 "fcbf97bce699364a754f268baf31eae9976778374815bd1bc9ea96b815a47e75"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.28/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "5d9aa497c3de0dd733daeb64ccf455edab63d92d161adfa2a6ebca90e1f1fa81"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.28/Covenant_#{version}_x64.dmg"
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
