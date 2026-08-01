cask "covenant" do
  version "0.11.11"

  on_arm do
    sha256 "631b67b004a441c7a123ccb107578d08bb1e6889eee4c68ec15997336945d1ce"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.11/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "a8406c143871333d5333bc26b1bb62589a3e58398c4673781096f355a3501b0b"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.11/Covenant_#{version}_x64.dmg"
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
