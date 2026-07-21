cask "covenant" do
  version "0.9.48"

  on_arm do
    sha256 "0c85f723557401b3918de27566e5726db6f075d7f6986612048e856b44f9826b"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.48/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "4b0edba4f45abe1d6fb18d74baa6b603350e413ff97ce22b7aec9ce883a928d7"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.48/Covenant_#{version}_x64.dmg"
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
