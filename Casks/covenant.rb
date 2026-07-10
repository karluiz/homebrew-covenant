cask "covenant" do
  version "0.9.3"

  on_arm do
    sha256 "f438e4fa50903dd1f4f7fb61c6ee3c40457774e85be2849c9c151cec24f47c79"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.3/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "f2563985c6682c9a8783de697440e90877bb1e0028f8a817cbc924a3913924fb"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.3/Covenant_#{version}_x64.dmg"
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
