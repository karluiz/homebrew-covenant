cask "covenant" do
  version "0.8.124"

  on_arm do
    sha256 "ea1d051f817227727da6841596980474b39463f77cb8a7e7eb77960b0670812c"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.124/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "5aafdfdc37feba7bed27eb14f480694c7b236c0bcb83fefda5051f6799f52ba7"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.124/Covenant_#{version}_x64.dmg"
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
