cask "covenant" do
  version "0.9.8"

  on_arm do
    sha256 "29255f25e0185e258702f50e755ff79c7120f0fc23dc0264bfa28579ddd7e26f"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.8/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "f6360c453152a0846355572017c07f701c4e68c277f3540fef4980c2aeefc821"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.8/Covenant_#{version}_x64.dmg"
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
