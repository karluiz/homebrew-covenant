cask "covenant" do
  version "0.9.82"

  on_arm do
    sha256 "0b81b2da76d0871645aa8297fe727af8933b8a8b1c9a0472cb9dba96ab8f134c"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.82/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "5bc3d1005f706d465aa6c2cd309ea8053e976ae59dd7b0390040cb4bfcd5ef01"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.82/Covenant_#{version}_x64.dmg"
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
