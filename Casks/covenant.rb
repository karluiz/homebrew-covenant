cask "covenant" do
  version "0.8.79"

  on_arm do
    sha256 "824f1b1e56976609c1c1acb4981bf73abe106e07ed70e272fbc837ec46c7116a"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.79/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "d8e70ee94426b3ba41361f5086b036abc0bc1e13b38f19c2608a6b438024cec0"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.79/Covenant_#{version}_x64.dmg"
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
