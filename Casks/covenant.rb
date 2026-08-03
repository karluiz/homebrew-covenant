cask "covenant" do
  version "0.11.15"

  on_arm do
    sha256 "2b3222ac51427422cb3967db6da512825ca1eb0cd23b1222b303d8c98794dfc9"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.15/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "20341b7e441d1874427d3769cd342c5c66ec36ed05dc93cfaa3a23e6d154fddb"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.15/Covenant_#{version}_x64.dmg"
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
