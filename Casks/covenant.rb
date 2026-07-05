cask "covenant" do
  version "0.8.122"

  on_arm do
    sha256 "b6beea3657461b19af59c2b1c7dd811a22cf423fb2b5d3c6a2f56f21a34d2f41"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.122/Covenant_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "052c58dc44dd2589446d91a7e72d65c59ea4ef088f00a09d314160626eee9926"
    url "https://github.com/karluiz/covenant/releases/download/v0.8.122/Covenant_#{version}_x64.dmg"
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
