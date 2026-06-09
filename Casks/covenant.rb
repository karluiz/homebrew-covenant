cask "covenant" do
  version "0.8.70"

  on_arm do
    sha256 "4e63c1553bf156ab41b295911e8158aac0d84bc3b073c95936a11c806ee019bd"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.70/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "0f919391b8ddf04b2607bb08014fa03bf798c0814a15ad830e879601fa2a8b49"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.70/Covenant_#{version}_x64.dmg"
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
