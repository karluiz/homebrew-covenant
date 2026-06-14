cask "covenant" do
  version "0.8.80"

  on_arm do
    sha256 "525c126cb55b814bdeb87a88fa7e89ae66cd9140ea0c8cd6c7626fd15e15224a"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.80/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "b4215e27a47987240d626d66102f169a3ab9adedb0b15cb4b17692a5e13ce2da"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.80/Covenant_#{version}_x64.dmg"
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
