cask "covenant" do
  version "0.8.118"

  on_arm do
    sha256 "55de5b78d57620d351ee2ffbd34aec93328e05e001981c72476df42f5e0b11dd"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.118/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "f6e11e31d1e6001721adeb68ad200f9b3709b9307cb7b02d815043a720fd3bb8"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.118/Covenant_#{version}_x64.dmg"
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
