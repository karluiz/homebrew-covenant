cask "covenant" do
  version "0.9.72"

  on_arm do
    sha256 "c7912a5537af34b399cbbd169a7b8db095a7582f4e42342e213c5e1d3fc19372"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.72/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "a31d8b3fec51e618f5b7f25720f52972fae0d5c4d2d8877c20d1a5baf496741b"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.72/Covenant_#{version}_x64.dmg"
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
