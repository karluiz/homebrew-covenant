cask "covenant" do
  version "0.8.71"

  on_arm do
    sha256 "e9269eea031ee5d2eca52bc6b5969aac5bcefe07437b723d661fde20c82dc5fb"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.71/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "85e42f6500e02fdef1f631f56b0ac7665bcf08a00d4b9a5a87cc9ad70f3417b0"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.71/Covenant_#{version}_x64.dmg"
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
