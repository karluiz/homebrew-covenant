cask "covenant" do
  version "0.9.11"

  on_arm do
    sha256 "08b92e49a198abe0a7b3e19f624c474bc012ddaffdbeda149e014e393b0b1b99"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.11/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "cc30bcf920f5c8c280f54f08848dd7a3eaa7bdc1bf88f8d1ee3470699ba2368f"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.11/Covenant_#{version}_x64.dmg"
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
