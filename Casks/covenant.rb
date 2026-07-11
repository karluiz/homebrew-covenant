cask "covenant" do
  version "0.9.5"

  on_arm do
    sha256 "bd99ae3970d553ec314792b8c0b16a3c00e58d0fe869f56e737a05823d518559"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.5/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "c8d5598868b1dd236921dc693f91f3052f4863d029059a744acc361c099bd5c7"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.5/Covenant_#{version}_x64.dmg"
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
