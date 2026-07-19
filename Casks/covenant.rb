cask "covenant" do
  version "0.9.39"

  on_arm do
    sha256 "3e4e199dda83c55089294227b610edafda80ac4d1ba14bbfa3588fe6da76447b"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.39/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "9372640f947d92d57b4f160b4f52aa98ca7ea288758f2f750e9ecd5d06ad24d1"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.39/Covenant_#{version}_x64.dmg"
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
