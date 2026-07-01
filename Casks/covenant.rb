cask "covenant" do
  version "0.8.114"

  on_arm do
    sha256 "b98a58f1956800349452c5475f2a0c906b32a44d2e7ffea88b0183f62223eaf1"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.114/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "359c16116b5752ee3b29daf98af05e8f4e01ad58f3e12c23e13c640bc8d26799"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.114/Covenant_#{version}_x64.dmg"
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
