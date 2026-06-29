cask "covenant" do
  version "0.8.108"

  on_arm do
    sha256 "f1ee224b22da963f67923ae4e264155c730cf36a7916edda09277ef51672ec11"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.108/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "5d718ef982046b3ef6f471594965f2c21b4959d60d3147780b973b90a5128a05"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.108/Covenant_#{version}_x64.dmg"
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
