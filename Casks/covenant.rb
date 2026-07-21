cask "covenant" do
  version "0.9.49"

  on_arm do
    sha256 "e7e48f1fde808d266f009e1b2a8de23320b7bcd76e137a28ce23908f2727098e"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.49/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "699a220ad377d61d771b4d392826a858c6916ad2249b5920624df70c150cfe05"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.49/Covenant_#{version}_x64.dmg"
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
