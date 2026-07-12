cask "covenant" do
  version "0.9.9"

  on_arm do
    sha256 "c9320dbe888c5ea82f9a433f8ba011ce3af9ec0ecaabb321eb128fa7071f6e52"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.9/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "3a09c34082f9e34aa631ada371b7bf9a7be5ca222b49347d114089ee9ee59f31"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.9/Covenant_#{version}_x64.dmg"
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
