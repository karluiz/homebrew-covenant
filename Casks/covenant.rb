cask "covenant" do
  version "0.9.76"

  on_arm do
    sha256 "717ef8bd548453b039574d4bacf4dd2406e06bc882b6c14202d4c6c0634fd94a"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.76/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "0e6b95b30cbb09f40773265d6dd4be2232a699a5fbec330a627bbd62e7cefa36"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.76/Covenant_#{version}_x64.dmg"
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
