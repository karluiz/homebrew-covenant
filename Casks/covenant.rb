cask "covenant" do
  version "0.8.116"

  on_arm do
    sha256 "9a45773e91e289a13f8a2ca1d2293ba949261a7eb21b6fd75b0932eae841c26e"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.116/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "a70d99c28620647e49efd49ff7c81facb30becd76cedf414fb0b200c964fcdb4"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.116/Covenant_#{version}_x64.dmg"
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
