cask "covenant" do
  version "0.9.79"

  on_arm do
    sha256 "3eb06e06bfff345a01b9de935f3c140a83d644c14f05e9cd48b88fe00dd7df83"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.79/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "f999fe2842f29fdc145419d20d42051b01f5deb3948a7ff0bce0635183b212c5"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.79/Covenant_#{version}_x64.dmg"
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
