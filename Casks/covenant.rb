cask "covenant" do
  version "0.9.74"

  on_arm do
    sha256 "6d5d5513ff92f207ec76f924714257fa90d1b50bb9ffcdd71aff423b0fe2ff1d"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.74/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "9c6bf7b39e78e45cbbf9f08982229cbe66522e63d0b6b48dfdbf5f411996195c"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.74/Covenant_#{version}_x64.dmg"
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
