cask "covenant" do
  version "0.8.84"

  on_arm do
    sha256 "05144d7e09fbe7379fe147f12cdcda8f7d234dc3628fe28947a34c0b157b2d5f"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.84/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "b5051c2a31cf7681aef07f6b6a762c9efb2cb38a1912b1c62b4798d0a0b16ec3"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.84/Covenant_#{version}_x64.dmg"
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
