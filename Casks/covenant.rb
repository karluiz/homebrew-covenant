cask "covenant" do
  version "0.9.23"

  on_arm do
    sha256 "17c213444f074d24080bde901ab005615b72221ed68072e20a0e3ef60ca68eb6"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.23/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "cd912525c36240820fecfba473e41edb81670eb8b95fa45874e2070fb2cc3982"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.23/Covenant_#{version}_x64.dmg"
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
