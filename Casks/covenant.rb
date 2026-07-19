cask "covenant" do
  version "0.9.41"

  on_arm do
    sha256 "787e6a7e94614aa05dfd1388cf1407f06df8bab7f2713de62b5c9516b4a7598b"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.41/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "4b68f796c27f3c01af96743fe9e07d0e926c4e12695c3fb4b983728eb8894938"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.41/Covenant_#{version}_x64.dmg"
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
