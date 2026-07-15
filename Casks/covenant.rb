cask "covenant" do
  version "0.9.28"

  on_arm do
    sha256 "be7d0ed951ef6657745dcccd9616511820e8c49b92012de0ff41d81279b431ff"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.28/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "798c85a26275f859ccf7640307c01772579ad500d6c706e89391c470439655f7"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.28/Covenant_#{version}_x64.dmg"
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
