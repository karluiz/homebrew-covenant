cask "covenant" do
  version "0.9.54"

  on_arm do
    sha256 "0c6b093f59f50fedbdc4dd40d3310ae19cf21c3a3194b1758a964ffdb77abd72"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.54/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "3c2bbac20013371dc97ba33f779184ffe86e85eac49b65592e0b644343555f7b"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.54/Covenant_#{version}_x64.dmg"
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
