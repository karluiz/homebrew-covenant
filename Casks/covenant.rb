cask "covenant" do
  version "0.11.9"

  on_arm do
    sha256 "a1d40651a9a07249bb6b37575d3dce8bc127f835cb72aa4d1f300756bdca7ee1"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.9/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "953cf3b015ae0c37d85357f42edef6f86f770825d61b764f1568516b7be7b288"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.9/Covenant_#{version}_x64.dmg"
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
