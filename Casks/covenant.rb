cask "covenant" do
  version "0.9.73"

  on_arm do
    sha256 "ea4dd1f1ea6ea09206dc5c4b829c131682267b8c584969cf332a1fa4f83fc1d1"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.73/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "e65bed3134308bc7c35b84fe3a3bf3b8bfda40bb7c286c870bccdc62956790a7"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.73/Covenant_#{version}_x64.dmg"
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
