cask "covenant" do
  version "0.8.96"

  on_arm do
    sha256 "c0a887b12383637d0762274cb55bd478bb3c1340593aa567477764f5c107e05d"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.96/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "03ac6276b904632a64291c84528da34e6239d3ff802a9c8f13be6311d2a4db33"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.96/Covenant_#{version}_x64.dmg"
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
