cask "covenant" do
  version "0.8.100"

  on_arm do
    sha256 "6c94aa20b50c85d56003627a05203f367609434d264bccf41436215a4f7ac620"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.100/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "d70413e090b3eba6726dc60062d123784d47e25ebc4d7915c7f7c83e8e96f291"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.100/Covenant_#{version}_x64.dmg"
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
