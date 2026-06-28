cask "covenant" do
  version "0.8.106"

  on_arm do
    sha256 "884a94537be1fa4d5ade089d605da84331263271b02dd057f9801e64c2fb53ff"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.106/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "ac016153a3ad1affa169d9bc77ab624272e49a6312c5af153d7deb9075cf1da8"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.106/Covenant_#{version}_x64.dmg"
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
