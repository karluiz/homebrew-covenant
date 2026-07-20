cask "covenant" do
  version "0.9.44"

  on_arm do
    sha256 "44e940a8d2680e0440b88364839ac1b41ab3f88bea917e7b71f30a3198c9a456"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.44/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "554b85ec0dd0ae69f67b418d44fef258864b88799d12c5bb64ff5b14cccaed48"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.44/Covenant_#{version}_x64.dmg"
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
