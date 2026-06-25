cask "covenant" do
  version "0.8.99"

  on_arm do
    sha256 "87b72ede3eff559bd79b2dc92f595f2cd46deb24debc3bc2d9efb0a36f99dbc8"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.99/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "9aaf7bb881ce354db214edd9b35c27331627dd59e0523a87d60183a10de2f3cb"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.99/Covenant_#{version}_x64.dmg"
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
