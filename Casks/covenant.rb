cask "covenant" do
  version "0.8.131"

  on_arm do
    sha256 "1ebddcd414e5112e028540173cb198e775f3b3118e44bded5456a054131956ef"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.131/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "293f09324b9f2870dd4d69505b7cd29879af29b2e5305940442964630068b1fa"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.131/Covenant_#{version}_x64.dmg"
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
