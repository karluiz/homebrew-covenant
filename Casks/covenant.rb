cask "covenant" do
  version "0.9.18"

  on_arm do
    sha256 "5f278dd6fd1e8d745e40e653371e68f332737f370ffe2d0724d15677d9b4cde6"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.18/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "885e892ca23f20f5fe96f92661095659b88edcba0f23b73ea5c020126cf49229"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.18/Covenant_#{version}_x64.dmg"
  end

  name "Covenant"
  desc "AI-native terminal for macOS"
  homepage "https://covenant.uno"

  depends_on macos: ">= :ventura"

  app "Covenant.app"
  binary "#{appdir}/Covenant.app/Contents/Resources/covenant"

  zap trash: [
    "~/Library/Application Support/com.karluiz.covenant",
    "~/Library/Preferences/com.karluiz.covenant.plist",
    "~/Library/Caches/com.karluiz.covenant",
    "~/Library/Logs/Covenant",
  ]
end
