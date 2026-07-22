cask "covenant" do
  version "0.9.56"

  on_arm do
    sha256 "17ce81972d545534c5eb4617d9964b7a7a8c892d4be159422c23feec119488b3"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.56/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "9e68cfe285531c5da7be2e3474376af5bc8c3099652a2f985e032dc468cfaa6a"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.56/Covenant_#{version}_x64.dmg"
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
