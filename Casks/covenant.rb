cask "covenant" do
  version "0.8.140"

  on_arm do
    sha256 "35ab400bd118fa38721f8bbbd5aa8cf91ae0e700c325e24c6dd2bc0dd92cb314"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.140/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "0f8ecd713b35d7d9e700a3fc56a3de5c554bdb42cafb07b48b6fa76e1beec732"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.140/Covenant_#{version}_x64.dmg"
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
