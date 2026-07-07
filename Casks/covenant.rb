cask "covenant" do
  version "0.8.132"

  on_arm do
    sha256 "cdde7b49d9e1aa1539b5f8eab3a42d3360802764d4ff4eb429a7dd1ede46682d"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.132/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "3b939b2f2a0bda5974a42729f510590775c1629a96fc44fef0554d9ea1f2dfbb"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.132/Covenant_#{version}_x64.dmg"
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
