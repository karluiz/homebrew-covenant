cask "covenant" do
  version "0.9.27"

  on_arm do
    sha256 "8b7a065a7152d0991a7d44c75edea12ba8b0d9342d267382c852009c74cf2e3b"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.27/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "b828630c3d8f8612deed92c23b06fb42e729682b7133b4a52359af71524b3f21"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.27/Covenant_#{version}_x64.dmg"
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
