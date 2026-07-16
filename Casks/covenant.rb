cask "covenant" do
  version "0.9.30"

  on_arm do
    sha256 "6dcb37e91015bd454dcadca0634ab9ef3ba5acb47092dbcb002dd4d154980c80"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.30/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "52ffea8c8db171a4acb7d7d95b6cd1315a119d1c31cd033ce18371a83b4dcb18"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.30/Covenant_#{version}_x64.dmg"
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
