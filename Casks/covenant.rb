cask "covenant" do
  version "0.8.88"

  on_arm do
    sha256 "f15089af51d2d670fff5042992f7251cb6263cb28a743fa97e499d47df43fee0"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.88/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "cfff4965435b3f597f6e242e56c98342c73ad182ab4e82fd4cb6390f120460c7"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.88/Covenant_#{version}_x64.dmg"
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
