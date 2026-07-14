cask "covenant" do
  version "0.9.16"

  on_arm do
    sha256 "7b9e9ecc261f9d5c5af3e4f5b340f0816bf3cbe494c144e1152379daddef6e7d"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.16/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "fa050b38f4e4e5eb632af814473bfd6e794866827a808e1869d2cd671636ce29"
    url "https://github.com/karluiz/covenant/releases/download/v0.9.16/Covenant_#{version}_x64.dmg"
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
