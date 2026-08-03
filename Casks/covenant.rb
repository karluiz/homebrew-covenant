cask "covenant" do
  version "0.11.21"

  on_arm do
    sha256 "3762f966ecb069baea58635b1e2652020fe1599edb12a893ecbe970582663f45"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.21/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "0620a7108df82f24aa0077bdf80fa7647796d75d1ce80d16921d539972a36bb4"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.21/Covenant_#{version}_x64.dmg"
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
