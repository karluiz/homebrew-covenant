cask "covenant" do
  version "0.9.52"

  on_arm do
    sha256 "bc0f64fe9689bddb924f657fe64a16efadf1c68897807bb5c06128a0e956da69"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.52/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "3573485b0c4aafefb257133292a0c60567930bd407d3fca2cd72b80b7e9b5926"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.52/Covenant_#{version}_x64.dmg"
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
