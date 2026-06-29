cask "covenant" do
  version "0.8.110"

  on_arm do
    sha256 "53187607b7759b4a7e32897d9e13422b4d1531b98566f0a8c59681758b3a58e1"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.110/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "4603d66c4a8fecb133e1367c21098261a27a6b6acdc864f89e2fa49cfde4f465"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.110/Covenant_#{version}_x64.dmg"
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
