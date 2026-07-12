cask "covenant" do
  version "0.9.7"

  on_arm do
    sha256 "9c90355977b01ae03462561adeca56e8ad351542729a34d43738d98bb58a99af"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.7/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "ffbb8803d0140d7e4d735efa194fb2f0c5ec82d7f9a213c764503fdfe527f591"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.7/Covenant_#{version}_x64.dmg"
  end

  name "Covenant"
  desc "AI-native terminal for macOS"
  homepage "https://covenant.uno"

  depends_on macos: ">= :ventura"

  app "Covenant.app"

  zap trash: [
    "~/Library/Application Support/com.karluiz.covenant",
    "~/Library/Preferences/com.karluiz.covenant.plist",
    "~/Library/Caches/com.karluiz.covenant",
    "~/Library/Logs/Covenant",
  ]
end
