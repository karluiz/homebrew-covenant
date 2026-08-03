cask "covenant" do
  version "0.11.19"

  on_arm do
    sha256 "0c699077777081ce89a86c4a2130c3312d4cf10be66d779a456595315b2a8552"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.19/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "b9ad55fb38bfa26718cdb3292c80eaf796e9dfcdf3f0e7701d8c46e7f1257814"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.19/Covenant_#{version}_x64.dmg"
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
