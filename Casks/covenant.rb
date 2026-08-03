cask "covenant" do
  version "0.11.18"

  on_arm do
    sha256 "9ed485f2511610e03472cce3d5feb1bdea6e1b9e702e3ba09ec464cc648c8cf3"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.18/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "50b8d6c6c6a4c3d1586cd4111c733fbfb89f3257fddcde59556dda2903f539ad"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.18/Covenant_#{version}_x64.dmg"
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
