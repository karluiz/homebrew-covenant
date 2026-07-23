cask "covenant" do
  version "0.9.60"

  on_arm do
    sha256 "9f135f9df95fcd30cc5d5892e4a3aaa00749942283c3df0b197ff4b59e23e32d"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.60/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "c5ef0af541e39b516dc40bc49702c5bb4b84bd6807453bb54fba766f11ceb681"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.60/Covenant_#{version}_x64.dmg"
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
