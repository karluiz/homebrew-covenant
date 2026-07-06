cask "covenant" do
  version "0.8.126"

  on_arm do
    sha256 "1ba3ffd3371aba81bc89bfa3b35b700ace7936c4a04e7b764a1a426ea1fcebb1"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.126/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "50f23df8963b53b91ec03bbd624be6535cc3e3c39b3289618baf4de89c4f4fab"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.126/Covenant_#{version}_x64.dmg"
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
