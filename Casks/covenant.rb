cask "covenant" do
  version "0.8.136"

  on_arm do
    sha256 "ee1d1b6807408ea3642fa4e315e59a02b1faef94339d5c1c77cbd015c03b8581"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.136/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "91263f5929d41be5ef937987a3467d439f39b03bcf3ae2b5e2378244c86f2f3e"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.136/Covenant_#{version}_x64.dmg"
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
