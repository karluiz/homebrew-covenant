cask "covenant" do
  version "0.8.113"

  on_arm do
    sha256 "c64362893e3a27d70a1c5c0f80e3fcd2027824c424cf18293d7c21eaa2ca8c08"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.113/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "70302455c0d89df8df52b5f3b01dbacab2542463815e0bfc30745142a3690f30"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.113/Covenant_#{version}_x64.dmg"
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
