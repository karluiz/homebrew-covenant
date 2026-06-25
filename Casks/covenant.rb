cask "covenant" do
  version "0.8.98"

  on_arm do
    sha256 "9ffffef151114e7b19e809f21283eeeb6898eee0c698067f001fb3411ed4e166"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.98/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "f90d3b5e9bf121c7de93010b1e0fd1ae4aaf76e3aca16a857078773eebe26c11"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.98/Covenant_#{version}_x64.dmg"
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
