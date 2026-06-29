cask "covenant" do
  version "0.8.112"

  on_arm do
    sha256 "f34626395349c70e3ad4c0e71c741c4f818440ef8e6082b2a03642ea76d5b9f3"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.112/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "4a78e53bc155c8c3829fb669556f6578833d293560aedb400a72e862f71872dd"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.112/Covenant_#{version}_x64.dmg"
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
