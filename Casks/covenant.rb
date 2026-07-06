cask "covenant" do
  version "0.8.127"

  on_arm do
    sha256 "6b7f6d6027e43784aee353b56c085907f7d79a8e54f55f2847ec1d2aa6d88196"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.127/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "a8d317da2b7d27628daac91e5e636bc038a981a35918cf3dabbb7a0849001897"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.127/Covenant_#{version}_x64.dmg"
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
