cask "covenant" do
  version "0.9.66"

  on_arm do
    sha256 "a8956c1282d32bdb01ee4e1110d2101401f488e7a020a0cf0dc805b5852db775"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.66/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "834e8d7ad1b1b725abd1295b0155624c90e2a5c35840bb41c336202522529362"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.66/Covenant_#{version}_x64.dmg"
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
