cask "covenant" do
  version "0.8.72"

  on_arm do
    sha256 "b0851cf4f673ca9ee069a39e54c06efdf8fb4574217879d1df73aedf34d72fc3"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.72/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "76b1d74e85af7f3984343ba7868668c6a0ce71930f1ebecb7afe457f779174f8"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.72/Covenant_#{version}_x64.dmg"
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
