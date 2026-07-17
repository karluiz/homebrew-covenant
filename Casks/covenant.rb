cask "covenant" do
  version "0.9.35"

  on_arm do
    sha256 "6fe46ec9b686b4ca645ac0ec1254099df59fe134651cf19d46a96cd2cd0cf64d"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.35/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "a75a05653fc26adb4bba5d128665907c18bc4954b53315b5abe5d7480526f914"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.35/Covenant_#{version}_x64.dmg"
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
