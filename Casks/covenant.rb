cask "covenant" do
  version "0.11.5"

  on_arm do
    sha256 "a0265e292f568a022c83d8f078891748412458cd8bf9932e972e897fe3def064"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.5/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "eb3c3f1f1a24670306104904b616b4baf04f6ba23af2e5724f6d695df29816f2"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.5/Covenant_#{version}_x64.dmg"
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
