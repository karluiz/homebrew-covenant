cask "covenant" do
  version "0.8.82"

  on_arm do
    sha256 "400109486b0ee946ec79f31c59d284d929f0fa474493621ca96861b792fde10f"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.82/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "d053b7b33ac1ad2e6e9d51e6861090051db07d776ab76328d25211153391cc8e"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.82/Covenant_#{version}_x64.dmg"
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
