cask "covenant" do
  version "0.9.37"

  on_arm do
    sha256 "a0c1f8ebbaaa5b01036750f8b5d14ecd6056ede14ad11730f69ef08d62af2b65"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.37/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "4257b99d4b3dd7101309d3218123d5582860b21148053071458b9f95f7593dc2"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.37/Covenant_#{version}_x64.dmg"
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
