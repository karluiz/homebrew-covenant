cask "covenant" do
  version "0.11.32"

  on_arm do
    sha256 "5ac12dcd77c2cffd823ce6e37d6dd612f14efe975fb56c439875ef76031f5c12"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.32/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "e6392cdc52bdbc35df2caa38d4ab1a13cb50f3b11c4382b27fdf37cd4067cdfa"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.32/Covenant_#{version}_x64.dmg"
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
