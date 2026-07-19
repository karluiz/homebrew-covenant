cask "covenant" do
  version "0.9.38"

  on_arm do
    sha256 "dd9909715ab6809bf1329c65257baaa0e7df92ce3bc0108bb237605b9eacac01"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.38/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "4a2cd9ee041c59f83c4da00f1fcde84bacb47b9341e4f01c3fdb100c777f3c23"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.38/Covenant_#{version}_x64.dmg"
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
