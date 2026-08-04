cask "covenant" do
  version "0.11.25"

  on_arm do
    sha256 "4615cb78f74ffbb4ffd8fe4ba0cd5ffe2e3facb39b7f583dcaa4246588838e07"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.25/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "7eb8bd62ce86c224254da887d6318e65a2ec5f35f3825d3f168f70335a24a4ec"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.25/Covenant_#{version}_x64.dmg"
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
