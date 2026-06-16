cask "covenant" do
  version "0.8.87"

  on_arm do
    sha256 "cc9cab92bad368281f53557baa4836fbf31411a45ca2d6be68435dbc69441d14"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.87/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "056c47306630844ccf8e31307c5887deb211ef5e7c8c8b3d56ee9150ef11bf18"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.87/Covenant_#{version}_x64.dmg"
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
