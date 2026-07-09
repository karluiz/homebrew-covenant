cask "covenant" do
  version "0.9.1"

  on_arm do
    sha256 "0be8bc376b3c74c14181571a6c671ec0daa593244ada87aa0505fb59a8a10867"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.1/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "fe4d15b2e90413c16c339a0c4ca810db3b3cf715d60ecfee7f4b339672582ec5"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.1/Covenant_#{version}_x64.dmg"
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
