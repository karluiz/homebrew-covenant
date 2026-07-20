cask "covenant" do
  version "0.9.46"

  on_arm do
    sha256 "aae36bebcabd03aa8dce3c9ab547b1e5105d85078621e1d830eecf5ae719c30d"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.46/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "dee72e6d8cb5ccac7ba51264327a89efff1c03bd5d53ee80c11bd46dfc450445"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.46/Covenant_#{version}_x64.dmg"
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
