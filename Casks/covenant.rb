cask "covenant" do
  version "0.8.77"

  on_arm do
    sha256 "b1abc03564c8c5bd3cefce98e9c5b942ca2e0d5e748d0d984623a2cae05f6fe4"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.77/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "a15871cafdc21a10d6db45bf8e5267944ab42a2f25b2024f265fce1236930870"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.77/Covenant_#{version}_x64.dmg"
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
