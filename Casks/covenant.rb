cask "covenant" do
  version "0.8.120"

  on_arm do
    sha256 "c810873b3fe0f09fa8e62d6781c9084b4f659b216ec6e2446c5f54193485e92b"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.120/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "652471024b81d73f8fca87577b7848023af7d481c3ca5d6f685bb3c5acc784f7"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.120/Covenant_#{version}_x64.dmg"
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
