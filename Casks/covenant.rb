cask "covenant" do
  version "0.8.105"

  on_arm do
    sha256 "5f40b72f5da9fb2958465a45179d499a24396037d10f9847275cc35ce3e6a1d0"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.105/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "a2d7e9718f60ee962e421fbeb54ed9b636a96d446e8e5fdbe8e1e19c65df9880"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.105/Covenant_#{version}_x64.dmg"
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
