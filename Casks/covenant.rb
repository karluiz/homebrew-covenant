cask "covenant" do
  version "0.9.21"

  on_arm do
    sha256 "cba795d985682c0477e413b8f8362bd18df07bbb8aea835571cc87c0503e81ad"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.21/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "8fcbafcf6996eef0a62019cc2241de78c66d01301336eb89120d3833ee9faaeb"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.21/Covenant_#{version}_x64.dmg"
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
