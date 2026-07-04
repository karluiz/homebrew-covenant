cask "covenant" do
  version "0.8.121"

  on_arm do
    sha256 "3eba8d29356d98afc46114b6d91b9e7bd02cfac97509752c2babc439ddd0c0a1"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.121/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "51bfd76799f333211ca00fa334b240195c6966a7dc6895e45218c9e7e78384d7"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.121/Covenant_#{version}_x64.dmg"
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
