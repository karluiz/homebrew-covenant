cask "covenant" do
  version "0.8.81"

  on_arm do
    sha256 "359da98ee0cc9cfd9afabc2e7aaed94f7bb2eb3b27abf03f0049805e1a074c90"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.81/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "ca7d4b07587675ba8be3b17391dc7308c370eecf71c428bd2171dc9cf7525506"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.81/Covenant_#{version}_x64.dmg"
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
