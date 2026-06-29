cask "covenant" do
  version "0.8.111"

  on_arm do
    sha256 "113ade93d44ccfaf46cb02f8373cd540ce251632f5cb61b13ce44b3d5f9a3c4d"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.111/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "5a55f40979a1de6f39e749f9821f1bb2d65d02f7bbaa6c21feec7a6f19111d32"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.111/Covenant_#{version}_x64.dmg"
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
