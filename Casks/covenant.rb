cask "covenant" do
  version "0.9.36"

  on_arm do
    sha256 "9d5e722d890481d371d19ab54dead9ee90705750e8ed0d0994523f9ade10d4db"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.36/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "1ca00b3e7cdcbab0fd4a732503d9f21ca0df33db2f6a571ae8fd5bef6f2b7823"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.36/Covenant_#{version}_x64.dmg"
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
