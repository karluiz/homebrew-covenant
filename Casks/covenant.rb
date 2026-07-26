cask "covenant" do
  version "0.9.75"

  on_arm do
    sha256 "b1c7eb8d6341206141cce07fb42f264eea91fbeddf5d16a6cd0d4a4e7519b92a"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.75/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "b16046a187c2e8c47002a2ef918021e43cef45e52401b8659fb98c4804fceb06"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.75/Covenant_#{version}_x64.dmg"
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
