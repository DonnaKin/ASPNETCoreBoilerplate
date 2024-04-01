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

```
// bootstrap.sh에 대한 실행 권한을 줍니다.
chmod +x bootstrap.sh

./bootstrap.sh
Enter the new project name: <your project name>
Project files have been updated.
```

### powershell

```
./bootstrap.ps1
Enter the new project name: <your project name>
Project files have been updated.
```
