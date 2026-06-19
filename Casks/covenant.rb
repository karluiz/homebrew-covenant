cask "covenant" do
  version "0.8.94"

  on_arm do
    sha256 "3575a7e1bf0663ae0e9e747d504cdbf41a2beedfa3d3b6471328ff0e4193e5bb"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.94/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "1004112e4d38bcd8653b1a8ad26dc1dc8f8dde9e92e3a68cbf806facd5431471"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.94/Covenant_#{version}_x64.dmg"
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
