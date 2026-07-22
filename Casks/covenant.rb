cask "covenant" do
  version "0.9.58"

  on_arm do
    sha256 "a4b7f938ec210f2b41446298f1661179caa496fc3d1edfb1a53040b57dbe1f90"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.58/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "0dc05a74fcc44a0fae399bb003e62dee53e2cb16b16f53a8a37febb308380d44"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.58/Covenant_#{version}_x64.dmg"
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
