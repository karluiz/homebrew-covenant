cask "covenant" do
  version "0.9.47"

  on_arm do
    sha256 "bafb566483227fd7a126bd0d1505f5f7a9ffed6c9008fc5e5d5d7c1c8e646299"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.47/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "0a34de9c0cba57326bbc2cef8c9995c654ae024d30abfe43ec817a9e8e105d76"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.47/Covenant_#{version}_x64.dmg"
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
