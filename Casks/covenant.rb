cask "covenant" do
  version "0.9.65"

  on_arm do
    sha256 "129362451a2d1f74ac1e482fc4351e46cbf8343baac80f116803b61beb4e7239"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.65/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "2f8f15f1152a586cec4a85a30b4929a3b6825cf1c4bcf567cdbafcbbe9c12f94"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.65/Covenant_#{version}_x64.dmg"
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
