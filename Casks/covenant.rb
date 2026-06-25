cask "covenant" do
  version "0.8.103"

  on_arm do
    sha256 "e7ac36ad16c9b4881944df0bdb5b693a6930ddc1b3f1360db76aec71e1914dc8"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.103/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "280d9c64eb22a2997a39bcbace0edd128a8c765a8ec30820abb58091a6963e39"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.103/Covenant_#{version}_x64.dmg"
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
