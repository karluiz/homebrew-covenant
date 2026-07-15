cask "covenant" do
  version "0.9.22"

  on_arm do
    sha256 "033b0953f9f5d9cef36b6dd65bf98b80f7799a634bac449b076e9cdd258afccf"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.22/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "fdae5892475badac43598d475c940d9d4daea83d50cc0826e1c44219f11b0008"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.22/Covenant_#{version}_x64.dmg"
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
