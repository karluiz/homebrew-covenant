cask "covenant" do
  version "0.9.25"

  on_arm do
    sha256 "b005c21f8193b3c075cec8dbaf51e5631cef803b2f421806c3fa41e9b2199e68"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.25/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "71cad7577e9cb3846528fafc303973a31285976d6ed4008a1511ebb235609545"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.25/Covenant_#{version}_x64.dmg"
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
