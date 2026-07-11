cask "covenant" do
  version "0.9.6"

  on_arm do
    sha256 "4d16ae77ec6279d29dbc221b2834de39d9b09320597ad2e5a32f7a604db3cf79"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.6/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "45e3a3fabff03d4de280333da4e2656888a33b380906518cf1d285895914f7e2"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.6/Covenant_#{version}_x64.dmg"
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
