cask "covenant" do
  version "0.9.24"

  on_arm do
    sha256 "57e58ba26a493434d5f120180c11a966d7a836cec5dafedbe84e3f7f8ca675c3"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.24/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "5f96e5a74c1eeaff0406d36e113750e97da8831215c09ecb89478e5ee504dd83"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.24/Covenant_#{version}_x64.dmg"
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
