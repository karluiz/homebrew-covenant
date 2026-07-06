cask "covenant" do
  version "0.8.125"

  on_arm do
    sha256 "775a0b242250913938773795b5106b5635f5f8e33313dec09c204ae78eb1dd35"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.125/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "7fd84247b16f7b53e9863430fbaf4d17a1c4cf1e9444aebe6b008ed1e890d241"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.125/Covenant_#{version}_x64.dmg"
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
