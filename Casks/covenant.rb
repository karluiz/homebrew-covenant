cask "covenant" do
  version "0.8.44"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/karluiz/covenant/releases/download/v#{version}/Covenant_#{version}_aarch64.dmg"
  name "Covenant"
  desc "AI-native terminal for macOS"
  homepage "https://covenant.uno"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Covenant.app"

  zap trash: [
    "~/Library/Application Support/com.karluiz.covenant",
    "~/Library/Preferences/com.karluiz.covenant.plist",
    "~/Library/Caches/com.karluiz.covenant",
    "~/Library/Logs/Covenant",
  ]
end
