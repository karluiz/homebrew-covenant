cask "covenant-gravity" do
  version "0.22.0"
  sha256 "5a7d6769126e310140ac298f944a10d4de37d57baf264557fd8b4c1a6b12d09d"

  url "https://github.com/CleveritDemo/covenant-v2/releases/download/v#{version}/Covenant-Gravity-#{version}-arm64.dmg"
  name "Covenant Gravity"
  desc "Terminal como orquestador de agentes de IA"
  homepage "https://github.com/CleveritDemo/covenant-v2"

  # Solo se publica arm64; sin esto un Mac Intel instalaría un binario
  # que no puede ejecutar.
  depends_on arch: :arm64

  app "Covenant Gravity.app"

  zap trash: [
    "~/Library/Application Support/Covenant Gravity",
    "~/Library/Preferences/com.covenant.gravity.plist",
    "~/Library/Caches/com.covenant.gravity",
    "~/Library/Logs/Covenant Gravity",
  ]
end
