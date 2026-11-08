cask "liplit" do
  version "1.0.0"
  sha256 "fb3be61fde3ba3296801d2f101d1b9da32357857c56733ad1e695aff86ad7ab1"

  url "https://github.com/jhnii/homebrew-liplit/releases/download/v#{version}/Liplit-#{version}.dmg"
  name "Liplit"
  desc "회의를 녹음해 기기 안에서 텍스트로 바꾸고 참석자별로 나누는 앱"
  homepage "https://github.com/jhnii/homebrew-liplit"

  # 앱이 스스로 업데이트한다 (Sparkle) — brew upgrade가 덮어쓰지 않게
  auto_updates true
  depends_on macos: :sequoia

  app "Liplit.app"

  # 공증 전이라 macOS가 붙이는 격리 표시를 지운다 (크롬 확장·Claude 데스크톱이 앱 안 도구를 띄울 수 있게)
  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Liplit.app"]
  end

  zap trash: [
    "~/Library/Application Support/Liplit",
    "~/Library/Preferences/com.glorang.LiplitMac.plist",
  ]
end
