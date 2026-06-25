cask "covenant" do
  version "0.8.102"

  on_arm do
    sha256 "8e1006cd9ab7ccca6c9b93ef47956c61e639f10520748200bd8fec0615dfb9e7"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.102/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "9cf140f6d8044c413bfeb0d0436862117dd4c91eaeb1ee277d485a0cf2e4b7a7"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.102/Covenant_#{version}_x64.dmg"
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
