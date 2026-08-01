cask "covenant" do
  version "0.11.12"

  on_arm do
    sha256 "75f062f49dcb3efc800f1af681adf84f4bd96144d9e3a0b340f5f3950d3f4f6d"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.12/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "a75d3332a0689d05ff5ed96223ad46da7cae23c8bc7b5ba5e883f3ad3485eaaa"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.12/Covenant_#{version}_x64.dmg"
  end

  name "Covenant"
  desc "AI-native terminal for macOS"
  homepage "https://covenant.uno"

  depends_on macos: ">= :ventura"

  app "Covenant.app"
  binary "#{appdir}/Covenant.app/Contents/Resources/covenant"

  zap trash: [
    "~/Library/Application Support/com.karluiz.covenant",
    "~/Library/Preferences/com.karluiz.covenant.plist",
    "~/Library/Caches/com.karluiz.covenant",
    "~/Library/Logs/Covenant",
  ]
end
