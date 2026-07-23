cask "covenant" do
  version "0.9.61"

  on_arm do
    sha256 "1d49b144c33100525d20df8d472337ebcd088e5880d474463b7f5e9e4b6df246"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.61/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "4a55cc9c9b12daf838db733ff4589cc26484e23b6bc02b2de04c05026cd5ce67"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.61/Covenant_#{version}_x64.dmg"
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
