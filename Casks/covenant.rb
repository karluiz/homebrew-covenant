cask "covenant" do
  version "0.8.90"

  on_arm do
    sha256 "e5ec9f981ae476a152cac22e9609c40de06e98bec7ca484f68d6d0405138326f"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.90/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "26097fa87ed92bedec63daa71188af8e0d57027d325cf54d12f23bebd2aafe24"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.90/Covenant_#{version}_x64.dmg"
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
