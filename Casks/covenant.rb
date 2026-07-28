cask "covenant" do
  version "0.9.80"

  on_arm do
    sha256 "cbebcf3d91f4e2d00d92ae4d3d83bc63f254fd7bcf9cedcfacaad099701472e7"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.80/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "1c08245bc6f064f805683f811711d34256f5b3383d203661fff951cf3c5f1c72"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.80/Covenant_#{version}_x64.dmg"
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
