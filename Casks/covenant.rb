cask "covenant" do
  version "0.9.81"

  on_arm do
    sha256 "5e318f72b2f98e54f03920dd2d72be31a60f24bfa36dd4e8883ecb33b7cde044"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.81/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "d5812b348954ff3e79a052b9eb758ba4f308d9b0d24e5ff3e0286aeb6ee97c5a"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.81/Covenant_#{version}_x64.dmg"
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
