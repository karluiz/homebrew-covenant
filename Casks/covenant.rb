cask "covenant" do
  version "0.9.4"

  on_arm do
    sha256 "f8c0aede037ca9c90d4c0bbaf1e6a9ab72cdf3bb62e03c6a0869a79b6b24cb45"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.4/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "1cdfa94c0f32a1176192653ab53b26bd70ba1a34b5c56a59bc61c30f676a0bbc"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.4/Covenant_#{version}_x64.dmg"
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
