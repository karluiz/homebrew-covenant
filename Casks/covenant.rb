cask "covenant" do
  version "0.9.32"

  on_arm do
    sha256 "e66e7cb6a0bc8c3333b0c6e1acdf88e3f105eb42ed3db3b4006b69ae76a77c5a"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.32/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "0de93802dcc95b32191ac377ce55cc4492015d54f045e6f070577e8bffc064a9"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.32/Covenant_#{version}_x64.dmg"
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
