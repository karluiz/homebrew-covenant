cask "covenant" do
  version "0.8.115"

  on_arm do
    sha256 "63e8f8bc8cf6bae7b3d6edc37489ce5cb2cb5f4909836c7128714daa4ac34c4d"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.115/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "c6b6a7ba097e8580d846747fef63c46956a1815b11a01e8e063fcae14aad078e"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.115/Covenant_#{version}_x64.dmg"
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
