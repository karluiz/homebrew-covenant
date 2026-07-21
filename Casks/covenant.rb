cask "covenant" do
  version "0.9.50"

  on_arm do
    sha256 "4c8a98bcd358b260b04de8d6cd928929e76a7f82f005518166727221e99400e9"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.50/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "0055f214ca8942c5693fe78f8caeef9c8aad3f55ac6fc646e8002325f5474438"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.50/Covenant_#{version}_x64.dmg"
  end

  name "Covenant"
  desc "AI-native terminal for macOS"
  homepage "https://covenant.uno"

  depends_on macos: ">= :ventura"

  app "Covenant.app"
  binary "#{appdir}/Covenant.app/Contents/Resources/covenant"

  zap trash: [
    "~/Library/Application Support/com.karluiz.covenant",
    "~/Library/Preferences/com.karluiz.covenant.plist",
    "~/Library/Caches/com.karluiz.covenant",
    "~/Library/Logs/Covenant",
  ]
end
