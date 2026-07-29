cask "covenant" do
  version "0.11.0"

  on_arm do
    sha256 "6e63e86f871c8fc4a81940129e64df8c9d0c21bd7b70236e09ce39bb8e88ce10"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.0/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "73fd3275d266defd3e743598dba5166d60a9a61bc3ead4ca1e89f78a3fe22af0"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.0/Covenant_#{version}_x64.dmg"
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
