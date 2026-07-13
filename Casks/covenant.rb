cask "covenant" do
  version "0.9.12"

  on_arm do
    sha256 "13d32f6e1e49c6abbf4055226265946cedc04b57370b9503629aa42777280aa2"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.12/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "130e97971a8cf6951c7ee87bbb6d5ddb7749c7fd4d433794e36416e73e78717a"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.12/Covenant_#{version}_x64.dmg"
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
