cask "covenant" do
  version "0.8.93"

  on_arm do
    sha256 "db6f4e16fc084d88c4626ee47d1d41580e10183b36925e84d7c5a9115af20a42"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.93/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "317daca0bbd65e1ab238058f891821c038f6db2cc3180b3f710f0d6da6285727"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.93/Covenant_#{version}_x64.dmg"
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
