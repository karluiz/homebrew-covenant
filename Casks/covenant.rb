cask "covenant" do
  version "0.9.20"

  on_arm do
    sha256 "ff4fd16253c67d24e25b1624cdee6683fe6020cde1f23b0722fe083ededf1876"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.20/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "fdea96ee4e95b3e4821a4a0cb3fcc7e03cdd19c7948abbc4188493b6c2e5b5ac"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.20/Covenant_#{version}_x64.dmg"
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
