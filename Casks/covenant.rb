cask "covenant" do
  version "0.8.51"

  on_arm do
    sha256 "d917fbdcb6142c8e4368755aa9c9e0b44da2b610ee894c064bee889efb1b7821"
    url "https://github.com/karluiz/covenant/releases/download/v#{version}/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "1cf766d0da802a2a4a228bb2caad3426655c4e7c45579a78cf9e033ec14dc26d"
    url "https://github.com/karluiz/covenant/releases/download/v#{version}/Covenant_#{version}_x64.dmg"
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
