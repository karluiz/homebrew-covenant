cask "covenant" do
  version "0.9.29"

  on_arm do
    sha256 "2752e7c3762421e1a88604facdf27747d3ff490e01f1b3573ab4b8e020f5a057"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.29/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "f61c845fa04c2d5d76b8fda31e0e03b4e1f7716b8add10c150077216d23fe65e"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.29/Covenant_#{version}_x64.dmg"
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
