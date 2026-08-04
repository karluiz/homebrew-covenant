cask "covenant" do
  version "0.11.23"

  on_arm do
    sha256 "8e6792d11934ee324ebb97e3df227f51358f4c4f26ec581a65762f08d21379f3"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.23/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "f25bd32c75123c9be49b7579cf5a8a24b1af8b920c8674ff522024d6702a0e54"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.23/Covenant_#{version}_x64.dmg"
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
