cask "covenant-gravity" do
  version "0.41.0"
  sha256 "c5b4689de2e7616ad31c968bb4dd86da5e9a22ff0f95d2934778e88330d0e068"

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
