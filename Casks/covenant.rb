cask "covenant" do
  version "0.11.4"

  on_arm do
    sha256 "972f7552028473f0fb24eff771ae84903dc38f84ec96db2ee9a6c7b8e3dc1d98"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.4/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "11b9c3a1f1ead4e5ac4144c54c75fc9261fbfc7cb3132b27fd341f193a733709"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.4/Covenant_#{version}_x64.dmg"
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
