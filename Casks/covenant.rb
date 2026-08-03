cask "covenant" do
  version "0.11.13"

  on_arm do
    sha256 "8cb61e75cad1ece6dab65b5eda03db572d83a8868a1125c2316b114d23a2e494"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.13/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "76859224ee4300c5e1285c36dbf84a8fd51bbc2b82acb942f44a49722fdf9721"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.13/Covenant_#{version}_x64.dmg"
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
