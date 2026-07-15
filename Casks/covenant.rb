cask "covenant" do
  version "0.9.26"

  on_arm do
    sha256 "56ee7b82a37271911aaa4a72585f2ec57e5278c682e3bdfb359f51b54b26abb1"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.26/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "0026ae7c56f0bd192382ddf1333d964c4bc25fa7f53215e6c258ce7f301cd930"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.26/Covenant_#{version}_x64.dmg"
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
