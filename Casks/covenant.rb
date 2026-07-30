cask "covenant" do
  version "0.11.8"

  on_arm do
    sha256 "619b16891a525d34059bf62d198a89595d1aa0a5f8059edd03b50f751e14c741"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.8/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "6be6aab2bb4501559d3d4108df868ba13df2f4f69c5aa0c848a06a8ac6aa471f"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.8/Covenant_#{version}_x64.dmg"
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
