# Liplit for Mac

회의를 녹음해 이 맥 안에서 텍스트로 바꾸고, 참석자별로 나누는 앱이에요.
녹음과 대화 내용은 맥 밖으로 나가지 않아요.

## 설치

```bash
brew install --cask jhnii/liplit/liplit
```

Homebrew 없이 설치하려면 [Releases](https://github.com/jhnii/homebrew-liplit/releases)에서 최신 `Liplit-<버전>.dmg`를 받아 안의 "설치 안내.txt"를 따라 주세요.

- macOS 15 이상에서 열리고, 텍스트 변환은 macOS 26 이상에서 돼요.
- 앱이 하루에 한 번 새 버전을 확인해 알아서 업데이트해요.
- Google Meet 녹음은 크롬에서 연 Meet을 녹음해요. 크롬 확장을 설치하면 참석자를 이름까지 구분해요.
- Claude 데스크톱에 연결하면 대화하듯 회의를 찾고, 회의록을 쓰고, 녹음을 시작·종료할 수 있어요.

## 이 저장소

배포 전용이에요 (소스는 비공개).

- `Casks/liplit.rb` — Homebrew 설치 정보
- `appcast.xml` — 앱 자동 업데이트(Sparkle)가 읽는 버전 목록
- Releases — 버전별 설치 파일(DMG)
