cask "covenant" do
  version "0.8.130"

  on_arm do
    sha256 "c4186a9b712b44f36170ed6db13bf9b01bbbd3ffbee30a7523bd167b23124129"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.130/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "e6bffe13437b1c54670656ee746c46011516c8326ea14ea5cc708e1bec6d9f4c"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.130/Covenant_#{version}_x64.dmg"
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
