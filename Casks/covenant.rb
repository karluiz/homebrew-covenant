cask "covenant" do
  version "0.8.128"

  on_arm do
    sha256 "8040381f15379c87423776c285cd643ee8a17d4188f1f72b06e85c4d11bfce67"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.128/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "544e193c2637d1ccc4bf428a37b7b682daf46e24699747029826d5aac2496b36"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.128/Covenant_#{version}_x64.dmg"
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
