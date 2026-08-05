cask "covenant" do
  version "0.11.33"

  on_arm do
    sha256 "c58d9bf71a9733513a8849db002080fd3bfbcbb58a4fe4c5f0a210df9851feba"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.33/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "cd82e5196305e7a16d484f32dec40e0c0b2d682bef8be600343f86b40460d105"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.33/Covenant_#{version}_x64.dmg"
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
