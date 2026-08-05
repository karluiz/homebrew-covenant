cask "covenant" do
  version "0.11.29"

  on_arm do
    sha256 "ba4933493a87b4dabed54e1e3f7f9696f4739dfbb2f92158a3268cfc630fdd9f"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.29/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "f0d89e1e800339f766f8755a525dfa4a95f40ddb110b36018f4c3afc179056f8"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.29/Covenant_#{version}_x64.dmg"
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
