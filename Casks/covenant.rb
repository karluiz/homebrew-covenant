cask "covenant" do
  version "0.8.137"

  on_arm do
    sha256 "ef1a4d23c81e27cad70d9d28d0beead52ca9f7d088c3354e2ae4062ebb4622ce"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.137/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "7266b595ab11b60a22e991d389c017d6995f6861ba11b0ae6b3fc04a6b672916"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.137/Covenant_#{version}_x64.dmg"
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
