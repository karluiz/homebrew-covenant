cask "covenant" do
  version "0.9.19"

  on_arm do
    sha256 "03e6ed68d3ff8c04cd3fbb274b66ac5977186d75a2857124a97cadfd862db92d"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.19/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "9be82510d3d21186fac96f4260e89abc6bb3eb6587bcac25586db872f967b368"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.19/Covenant_#{version}_x64.dmg"
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
