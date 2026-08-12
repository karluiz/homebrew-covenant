cask "covenant-gravity" do
  version "0.39.46"
  sha256 "81ee9d525a294c0fd9a3d7dc22e269dd5aa90241205a8adebab5c23e045a6925"

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
