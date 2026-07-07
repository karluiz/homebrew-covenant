cask "covenant" do
  version "0.8.135"

  on_arm do
    sha256 "d32cbad959ac0b28fe59a4e96314cb93fd54a4f109da1dc43fffa870ba4cecea"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.135/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "b949029d43e63a22a9d21e823f3ed990b26af6bcd2bd7123f87e69450a51be5a"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.135/Covenant_#{version}_x64.dmg"
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
