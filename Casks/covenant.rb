cask "covenant" do
  version "0.9.45"

  on_arm do
    sha256 "bfca0defffc1cf8693db329d103050e26ec4ddbd68c5e60684aaa4f96b9ef0bb"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.45/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "a7cc504e847f910b55d444a0fe19c1b72bdb580ce0169d0e0f11c1beaf7c8240"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.45/Covenant_#{version}_x64.dmg"
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
