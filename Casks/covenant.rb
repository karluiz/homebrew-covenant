cask "covenant" do
  version "0.8.129"

  on_arm do
    sha256 "674a4ba0de6f10bb56e617aafeac5b94268725aaeeafabc4811f998084f8c75d"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.129/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "af0b8bc909f81ac48562e4bc9fbaf89c123f4e132f4dbe4693b5e97720662ebd"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.129/Covenant_#{version}_x64.dmg"
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
