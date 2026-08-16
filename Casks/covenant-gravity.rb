cask "covenant-gravity" do
  version "0.64.0"
  sha256 "e220ac126c44702c9a9bce9d1d1d8dde94605b20f4e950c3967adc383ebba165"

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
