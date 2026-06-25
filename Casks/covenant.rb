cask "covenant" do
  version "0.8.97"

  on_arm do
    sha256 "770832e23f2124118aedb828bc374fe06fc19a71d00bfd275ad9d0a167d35305"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.97/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "bd5fc98b6fe2c233239c360441f38240203fd4b34161b8743b1cfa8e6ca76465"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.97/Covenant_#{version}_x64.dmg"
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
