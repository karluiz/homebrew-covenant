cask "covenant" do
  version "0.11.26"

  on_arm do
    sha256 "b74b03da89425ad1eadd24cd667a7a36d102faab8da18d1d7b27be5e010773d0"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.26/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "df71b22fa4d54f93b504f2ed4a3ba718b3adc1dd1d1a12dc0f3dace00ecd3db8"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.26/Covenant_#{version}_x64.dmg"
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
