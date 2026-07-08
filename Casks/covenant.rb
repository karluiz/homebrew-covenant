cask "covenant" do
  version "0.8.138"

  on_arm do
    sha256 "90c21eecf923cc19ac5cacf8ee9da79d47c0c559afebd8648ce7e59142f201e3"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.138/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "4def71d7427c247f589dce0ffa6f88bdaf519595861c58121411c6cea3a6064b"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.138/Covenant_#{version}_x64.dmg"
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
