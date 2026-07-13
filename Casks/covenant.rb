cask "covenant" do
  version "0.9.14"

  on_arm do
    sha256 "f16727fc1e5bd78b24acaac97a1d97052a0a26ae3af6633c855f05f8869bc606"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.14/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "d3198bdf99789453ae2c40d4fb7934d33f9b569f2b5a27105b339ec713f4a735"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.14/Covenant_#{version}_x64.dmg"
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
