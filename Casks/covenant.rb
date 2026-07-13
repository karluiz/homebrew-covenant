cask "covenant" do
  version "0.9.10"

  on_arm do
    sha256 "37dce95d55b927edb483853a50e6fa96832a22031ebfb6baff474f6b4d663e94"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.10/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "f0b205e6cbc3a541bab2da89c4014ae4427ece40076e7f7328b488f7c106011e"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.10/Covenant_#{version}_x64.dmg"
  end

  name "Covenant"
  desc "AI-native terminal for macOS"
  homepage "https://covenant.uno"

  depends_on macos: ">= :ventura"

  app "Covenant.app"

  zap trash: [
    "~/Library/Application Support/com.karluiz.covenant",
    "~/Library/Preferences/com.karluiz.covenant.plist",
    "~/Library/Caches/com.karluiz.covenant",
    "~/Library/Logs/Covenant",
  ]
end
