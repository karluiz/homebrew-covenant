cask "covenant" do
  version "0.8.92"

  on_arm do
    sha256 "5ea67204996eddca7021e511f496b8b1a3778fc470d0050c645303eceec89dc1"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.92/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "42682676ef399b91332de15067807020bb4ab96350352f29ae7b62874173d2bb"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.92/Covenant_#{version}_x64.dmg"
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
