cask "covenant" do
  version "0.11.16"

  on_arm do
    sha256 "d75febad11d076137a47b96d4e3909dcf15aabebf65a636abf781df7e5aeaf8c"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.16/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "52accd6b2bc178578b6f83f7dffed9d4045fcbb0dceca5775c415705dd41fe69"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.16/Covenant_#{version}_x64.dmg"
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
