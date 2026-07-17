cask "covenant" do
  version "0.9.34"

  on_arm do
    sha256 "04a768f4b0b85de859314dbb372efc671dcc1e3ea45824cd3c761d122a577788"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.34/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "647c7690180e173cb0fa7755689b195e63f6bba52f0060a4818e00791f3c71c7"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.34/Covenant_#{version}_x64.dmg"
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
