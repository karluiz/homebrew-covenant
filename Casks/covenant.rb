cask "covenant" do
  version "0.8.83"

  on_arm do
    sha256 "12dcc0decde5e3da53426126e50156a4cff11298a1d849226d3d471a52417ce1"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.83/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "354d3c56621834f042d7474206abb247dceeabbdcd91a8227e3872bf494348cb"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.83/Covenant_#{version}_x64.dmg"
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
