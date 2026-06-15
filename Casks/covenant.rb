cask "covenant" do
  version "0.8.86"

  on_arm do
    sha256 "6f1234a9308474ad1f9003873ab313bfef81a90a1d8a670fc08465e55cec5d07"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.86/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "6000a85aa8795dd180fb4e563c126410c22592f08cc7be10a7fe3a0300ff1f65"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.86/Covenant_#{version}_x64.dmg"
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
