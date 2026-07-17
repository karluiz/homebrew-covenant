cask "covenant" do
  version "0.9.33"

  on_arm do
    sha256 "36586847b803c6108231e31d7bc45baf669628ec9d63ca5fc99d31e596159842"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.33/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "ad2d7958f91de4f64ba52c3eea74d7b25122ff790c7b21ebed72c4bc1248ff74"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.33/Covenant_#{version}_x64.dmg"
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
