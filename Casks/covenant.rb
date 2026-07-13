cask "covenant" do
  version "0.9.13"

  on_arm do
    sha256 "cc65c9012c0ffdbeb2ec3a5d9bf30989b2353bee82f683710d110f5e96fd0698"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.13/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "0b563ec71cf458d964f2be53cf86f008448b05312fa98c4329d57fa8e6a52968"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.13/Covenant_#{version}_x64.dmg"
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
