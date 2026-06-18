cask "covenant" do
  version "0.8.91"

  on_arm do
    sha256 "6f6d6d26f68d6c3ba70e533cb47e7257bb17897f84b1c68683e0aa8cc5cf17e7"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.91/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "c310cb46bda7d8a149b0fff7f58631368d9c693d4566ccb821a8614026b66ac5"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.91/Covenant_#{version}_x64.dmg"
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
