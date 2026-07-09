cask "covenant" do
  version "0.9.2"

  on_arm do
    sha256 "d68ea602299e2e7dc54a8c7914293733de5a33992d81bf0bc036dcb56bfdd002"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.2/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "d33129da2fa3569cf0c9bf109bba6cec4a6bacb14b8702a7a9f90df72e0016cb"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.2/Covenant_#{version}_x64.dmg"
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
