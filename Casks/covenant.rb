cask "covenant" do
  version "0.8.74"

  on_arm do
    sha256 "0b991fef71573eedaa0344ce53df1ed3dd63d9234edc975c8aed115c5e8827a0"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.74/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "8765f103e47878c66c645fdda654d91b26499464259f72a7fc2505600e4c7c6d"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.74/Covenant_#{version}_x64.dmg"
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
