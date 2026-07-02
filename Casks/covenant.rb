cask "covenant" do
  version "0.8.117"

  on_arm do
    sha256 "6ece57e5326d248ce0f16bd9c6ab538bacda7ac1cf594ce6c1466ea580f6604e"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.117/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "d5756ee3df8bf453b22d5cd76330c4b118a13052290e4c902e1f3bab640a9e6e"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.117/Covenant_#{version}_x64.dmg"
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
