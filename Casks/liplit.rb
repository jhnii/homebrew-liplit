cask "liplit" do
  version "1.3.0"
  sha256 "ec4d245517970cc558d84460484cf28c7e7a1e7b15e4cfe165f64b4a7d504088"

  url "https://github.com/jhnii/homebrew-liplit/releases/download/v#{version}/Liplit-#{version}.dmg"
  name "Liplit"
  desc "회의를 녹음해 기기 안에서 텍스트로 바꾸고 참석자별로 나누는 앱"
  homepage "https://github.com/jhnii/homebrew-liplit"

  # 앱이 스스로 업데이트한다 (Sparkle) — brew upgrade가 덮어쓰지 않게
  auto_updates true
  depends_on macos: :sequoia

  app "Liplit.app"

  zap trash: [
    "~/Library/Application Support/Liplit",
    "~/Library/Preferences/com.glorang.LiplitMac.plist",
  ]
end
