cask "covenant" do
  version "0.11.17"

  on_arm do
    sha256 "3baefef644df1f5aa3346b05ae590fafd443785c70a2a1b05c1f2057a4fb525d"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.17/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "5c76ca23f3e8d347d30e690ad2e98f286bc9a19cdb25c9dd517d9531e6c262bf"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.17/Covenant_#{version}_x64.dmg"
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
