cask "covenant" do
  version "0.9.70"

  on_arm do
    sha256 "5a19158c44eab7428af75672b03cb675b4a47920398c007e364912eaad4a0067"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.70/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "d542b05c5b45fba1df1c141639a7fac0c60d65d15b8ea1814e980b40260ec51b"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.70/Covenant_#{version}_x64.dmg"
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
