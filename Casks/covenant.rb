cask "covenant" do
  version "0.11.20"

  on_arm do
    sha256 "d1d1d0879fa88acca4b1104a270d2ccf4a6f066e38c4953a60927a306b2444ff"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.20/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "28644a6f5801b637115e2ead3ae70d6c2cf3eba813d31ca2db81f06108b93686"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.20/Covenant_#{version}_x64.dmg"
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
