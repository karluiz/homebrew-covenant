cask "covenant" do
  version "0.8.134"

  on_arm do
    sha256 "2c694f1992530ff020d739eaf7cfbc35b1fd2644293393d243cfc6ea866c3c0f"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.134/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "a45b18b52037440a8c7af981fe6880c8e132eae48ca0e7fd5e9ee275fc1b3a46"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.134/Covenant_#{version}_x64.dmg"
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
