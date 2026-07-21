cask "covenant" do
  version "0.9.55"

  on_arm do
    sha256 "a76a74dbfac850337dc306f81ef6e6f957496784542fdcba9e3680085368c7c0"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.55/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "d6a35e2fab56a14f3455217600268f29f94b9b48ddfd2376f0e77e57e1048eae"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.55/Covenant_#{version}_x64.dmg"
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
