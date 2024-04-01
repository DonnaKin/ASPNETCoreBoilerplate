# CoreBoilerplate
ASP.NET Core 보일러 플레이트

# Setup

## 1. 클론 또는 포크를 받는다.

### 1-1. 클론 받았을 시

remote를 변경한다.

```
git remote set-url origin <your githhub repository url>

// 확인
git remote -v
origin <your githhub repository url> (fetch)
origin <your githhub repository url> (push)
```

## 2. bootstrap을 실행시켜 프로젝트 이름을 바꿔준다.

### bash
> bootstrap.sh 스크립트의 sed 명령어는 macOS에서 사용할 때 빈 문자열("")을 옵션으로 추가하여야합니다.
> 참고 : https://stackoverflow.com/questions/19456518/sed-command-with-i-option-failing-on-mac-but-works-on-linux
> 다른 운영체제에서 문제가 발생한다면 ""를 제거하고 실행합니다.

```
// bootstrap.sh에 대한 실행 권한을 줍니다.
cd ./Scripts
chmod +x bootstrap.sh

./bootstrap.sh
Enter the new project name: <your project name>
Project files have been updated.
```

### powershell

```
cd ./Scripts

./bootstrap.ps1
Enter the new project name: <your project name>
Project files have been updated.
```
