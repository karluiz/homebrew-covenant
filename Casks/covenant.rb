cask "covenant" do
  version "0.8.104"

  on_arm do
    sha256 "2b32d3632b5142cc42e6410923d09009ab55d111a6f935cff61a0e27ed225509"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.104/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "ea238e67721f1aeb2a70be6a2d73c3986a04a104921f83befd7ca58465141873"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.104/Covenant_#{version}_x64.dmg"
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
