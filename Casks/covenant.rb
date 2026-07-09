cask "covenant" do
  version "0.9.0"

  on_arm do
    sha256 "7ed19ed622628ba9ab4caca985cc12e68883864365423d01e76c99b76680cf4c"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.0/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "4aba2381554167a6590912c06771195faeb7e412b3e3b9f19c72e4e4ef278cda"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.0/Covenant_#{version}_x64.dmg"
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
