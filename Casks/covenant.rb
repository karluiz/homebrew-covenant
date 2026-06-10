cask "covenant" do
  version "0.8.75"

  on_arm do
    sha256 "9c473bee23b52a91040013d5a97bfa73bc0eb7a08f4f7ad5bbbdf0251161ec5c"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.75/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "8dcbab6188592e0674c8118ba1acd9f38f9cb36552077a046636a98985f74a8a"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.75/Covenant_#{version}_x64.dmg"
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
