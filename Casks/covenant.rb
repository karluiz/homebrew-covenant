cask "covenant" do
  version "0.11.36"

  on_arm do
    sha256 "5d62c7bb2b2f4d7eb6d87487e0e05b2e8caff0a21113b9faa5578df05ceb663f"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.36/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "2b2e7fd3abe01f726e559d3c5aa56684bba2952671f466e1247e27bbe289196f"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.36/Covenant_#{version}_x64.dmg"
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
