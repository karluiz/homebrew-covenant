cask "covenant" do
  version "0.8.109"

  on_arm do
    sha256 "5bff75a24ad7d30ad4cc68645c135b5d96b74303e8d4e52a504a9c3db1d4a9fc"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.109/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "ae0e85bc76a21c99c68d0fbc5d45977b1d13658864da2fddc383836304789ae4"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.109/Covenant_#{version}_x64.dmg"
  end

  name "Covenant"
  desc "AI-native terminal for macOS"
  homepage "https://covenant.uno"

  depends_on macos: ">= :ventura"

  app "Covenant.app"

  zap trash: [
    "~/Library/Application Support/com.karluiz.covenant",
    "~/Library/Preferences/com.karluiz.covenant.plist",
    "~/Library/Caches/com.karluiz.covenant",
    "~/Library/Logs/Covenant",
  ]
end
