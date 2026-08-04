cask "covenant" do
  version "0.11.27"

  on_arm do
    sha256 "582513f731122d38bf2c2790f841978202362e9809b5594600395222932d8369"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.27/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "21993a4d29af708144a2bd3ca2597c7f3062bc93a8e51a7f6235d9c744fe3686"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.27/Covenant_#{version}_x64.dmg"
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
