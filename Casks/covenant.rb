cask "covenant" do
  version "0.8.78"

  on_arm do
    sha256 "4c61cd7924d40663e15ed16f916f215d570740f475cf70c3af3a3caea15b0916"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.78/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "f6df7cbe980e6c6f2e17a9f0fddef4002a3b636d640d36c539f87b9f27760e29"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.78/Covenant_#{version}_x64.dmg"
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
