cask "covenant" do
  version "0.8.76"

  on_arm do
    sha256 "91e337fd8c6b080120d3ea8f822eba3ae304a1f0e5d9c14cfafdc81ae6f1644a"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.76/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "efd1ba978e880b281bce5d9f31146c4c11335a889d581cf8525e67417877c395"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.76/Covenant_#{version}_x64.dmg"
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
