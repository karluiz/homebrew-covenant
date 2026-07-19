cask "covenant" do
  version "0.9.40"

  on_arm do
    sha256 "b01230f9ee5a3dc90dff0ef2089823837b6ae6a47221fe4f67368afd0545f88d"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.40/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "e42ea07df89caa50be1060a45bec68d06ffd4c2eed42ebd635c1ebd6f8d05c84"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.40/Covenant_#{version}_x64.dmg"
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
