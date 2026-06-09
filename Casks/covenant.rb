cask "covenant" do
  version "0.8.73"

  on_arm do
    sha256 "7f90e8470c4d5d08e02f65a4ad4b12bc55984fa7a702cc01165272791c3162ee"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.73/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "f80d64fd94e277122f1ccde6e4ca67b405a70f69adc0ea8bed4f71e6c391d8db"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.73/Covenant_#{version}_x64.dmg"
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
