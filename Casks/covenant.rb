cask "covenant" do
  version "0.11.6"

  on_arm do
    sha256 "15d3b49a32182dac4cbf3131599fd98c35ca7bedfb4fbe428a579defd3566d74"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.6/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "7157b1685dca357943b0f7c56de81be1cbaeb09cfe61d7a444d65c3043b57935"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.6/Covenant_#{version}_x64.dmg"
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
