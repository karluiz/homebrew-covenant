cask "covenant" do
  version "0.8.133"

  on_arm do
    sha256 "c95eeb0ed898b5e3c53043b26d273db8917021fc31103f2c2093a7acfe79d9b7"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.133/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "f5717cfa1a5deae6aff56c9cd3c97bf7bb5643b47a6c760d8c060333c4476d2d"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.133/Covenant_#{version}_x64.dmg"
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
