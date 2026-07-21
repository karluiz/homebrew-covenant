cask "covenant" do
  version "0.9.51"

  on_arm do
    sha256 "a28da662f6593230a6d738bc5f8c899062dc90b614258663da826c311ad2c936"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.51/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "dff80f40b42b7188dd14a66066d51b84a5b8a59abef5aa3954c731ed0637904c"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.51/Covenant_#{version}_x64.dmg"
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
