cask "covenant" do
  version "0.8.141"

  on_arm do
    sha256 "52f4097bf0284b233aea0106bb550b882af6ecd3f1d6a692ef7073315647b6ea"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.141/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "43571f30ae0287523041dee42b470b4dbd8c6ed3af692700c2cd4cd15c5c7807"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.141/Covenant_#{version}_x64.dmg"
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
