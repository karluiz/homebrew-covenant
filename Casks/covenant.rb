cask "covenant" do
  version "0.8.143"

  on_arm do
    sha256 "4bf1568027616891c48e8c9224548847b29becce2ddeddb3fa478c99276975df"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.143/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "79c36f75328245ea7870ea4911e8f6a46eb8848f370e2f040357306234b0d9ac"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.143/Covenant_#{version}_x64.dmg"
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
