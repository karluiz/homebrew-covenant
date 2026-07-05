cask "covenant" do
  version "0.8.123"

  on_arm do
    sha256 "cef2a4312046277ffd6700b5abd4b48807f710d9e4c4aa7492e9fc58658602ca"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.123/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "38eb1edec87aeca9ac3ee3518f38618b901c5211b6b5fa46b76d279f8a090027"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.123/Covenant_#{version}_x64.dmg"
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
