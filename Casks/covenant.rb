cask "covenant" do
  version "0.8.119"

  on_arm do
    sha256 "025536f245cf7efe6ae02c6a36900b096e76947f0cf9202c876a63305b805d57"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.119/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "363542f697d5bb8c95f0e52bfb6a11c3c36b5df78387ed37f876af06d77b04ea"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.119/Covenant_#{version}_x64.dmg"
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
