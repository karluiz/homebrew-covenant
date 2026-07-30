cask "covenant" do
  version "0.11.7"

  on_arm do
    sha256 "8d2b9d42f91099f840ac055dbfb1aa06246ff19e81654de4e8f6a9d996662fee"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.7/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "8921777934a02f91b6b0658eab9bef421ed6420149697c5b8a88ae0c7b2af9de"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.7/Covenant_#{version}_x64.dmg"
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
