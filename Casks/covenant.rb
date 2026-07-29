cask "covenant" do
  version "0.10.0"

  on_arm do
    sha256 "d635a512d8056f153107e496ab03f49404fab6daa46c96e9c86b1ce61ed96fde"
    url "https://github.com/karluiz/covenant/releases/download/v0.10.0/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "3ce411bc4e7f4ba014ae52693889e702b5a1a2c2333b699a000fad49e825e5ed"
    url "https://github.com/karluiz/covenant/releases/download/v0.10.0/Covenant_#{version}_x64.dmg"
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
