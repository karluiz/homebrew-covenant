cask "covenant" do
  version "0.8.101"

  on_arm do
    sha256 "2a41dc75cb7355a6a9dcde92c1ed9676d9d0e0d50996fed77ee147f64b6172f7"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.101/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "8e7e37c3f56029f9a1a6e65caa6e05634a92a95cecea459a8a4a225248ebe387"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.101/Covenant_#{version}_x64.dmg"
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
