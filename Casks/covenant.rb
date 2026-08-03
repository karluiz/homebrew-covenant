cask "covenant" do
  version "0.11.14"

  on_arm do
    sha256 "f0c6862cc1fd6e79789f7a61c8b83815a30ff6344471bf36ae69974ad8aecd71"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.14/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "31131e0b6711cb070981966b554589be437ceda40a39199af23fe2920a6a0697"
    url "https://github.com/karluiz/covenant/releases/download/v0.11.14/Covenant_#{version}_x64.dmg"
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
