cask "covenant" do
  version "0.8.107"

  on_arm do
    sha256 "42b7de50130d1187fe668d456ab4cb5d492548a3ffbe71af9f7a0048933d58a4"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.107/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "ea022f49fa684e6e65c47a59b8e2a59dfa0212f9158bdfbdd86b84052e77db17"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.107/Covenant_#{version}_x64.dmg"
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
