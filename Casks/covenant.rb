cask "covenant" do
  version "0.8.139"

  on_arm do
    sha256 "f63b2b23796af4642f0f2996bd8730a03cdc26c17606febc284359ced6412612"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.139/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "75c919b9243314278d99285db32a1e7d4c65815d806fc5ffd3fc5200b16c4c19"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.139/Covenant_#{version}_x64.dmg"
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
