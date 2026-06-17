cask "covenant" do
  version "0.8.89"

  on_arm do
    sha256 "5df6d15dcb851e7ef5a6ab772590bd6b7f6d536e579b9fa067023cf627eced83"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.89/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "4906bdf3d4efe6964a0694118c3a3f7df40f40d202230ca310e03143d1d5af63"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.89/Covenant_#{version}_x64.dmg"
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
