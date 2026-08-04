cask "covenant" do
  version "0.11.22"

  on_arm do
    sha256 "602e8190ffea893fac05e2ebbcf957bb5aeb1f85375ad43607005b71332e8b74"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.22/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "91d4cef9f8bde53427746d5d18772a749f8e69da3de1d7527fa74e336369f48c"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.22/Covenant_#{version}_x64.dmg"
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
