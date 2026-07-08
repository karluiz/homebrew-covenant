cask "covenant" do
  version "0.8.142"

  on_arm do
    sha256 "e5cff2cde973ed09cb59fe91f80cd0a3c805d6f8fccb21d21516afef88f8552f"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.142/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "841f455cae49875ce69025df8bdd5de3a8f758ba0b1ccfad28b5968f5846c0a4"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.142/Covenant_#{version}_x64.dmg"
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
