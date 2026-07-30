cask "covenant" do
  version "0.11.3"

  on_arm do
    sha256 "5e059014fd5fe04306d496601d97a3766c56b6f5918653607f4f6101cea3b520"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.3/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "9143c3d6b8ee5ceea7f89d6c2c731aeb01c817b7969b8e8628dc9ca1d8cb97d3"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.3/Covenant_#{version}_x64.dmg"
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
