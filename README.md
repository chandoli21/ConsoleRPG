## **📌 Dart 심화 - 전투 RPG 게임**  

### **📝 프로젝트 개요**  
이 프로젝트는 **Dart 언어를 사용하여 간단한 전투 RPG 게임**을 구현하는 과제입니다.  
게임에서는 **캐릭터와 몬스터 간의 전투**가 이루어지며, 플레이어는 공격 및 방어를 선택하여 몬스터를 물리쳐야 합니다.  
또한, **파일 입출력 기능을 활용하여 게임 데이터를 저장 및 불러오는 기능**이 포함됩니다.  

### **📂 프로젝트 구조**  
```
📂 RPG_Game
 ├── 📄 character.dart    # 캐릭터 클래스 정의
 ├── 📄 monster.dart      # 몬스터 클래스 정의
 ├── 📄 game.dart         # 게임 진행 로직
 ├── 📄 file_io.dart      # 파일 입출력 기능
 ├── 📄 main.dart         # 게임 실행 파일
 ├── 📄 characters.txt    # 캐릭터 정보 저장 파일
 ├── 📄 monsters.txt      # 몬스터 정보 저장 파일
 ├── 📄 result.txt        # 게임 결과 저장 파일
 ├── 📄 README.md         # 프로젝트 설명 파일
```

### **⚙️ 필수 기능 구현**  
✅ **객체 지향 프로그래밍 활용**  
- `Character`(캐릭터), `Monster`(몬스터), `Game`(게임) 클래스를 설계하여 **게임 구조를 객체 지향적으로 구현**  

✅ **전투 시스템**  
- 캐릭터는 매 턴 공격 또는 방어를 선택할 수 있으며,  
  몬스터는 랜덤으로 선택되어 전투가 진행됨  

✅ **파일 입출력**  
- `characters.txt`와 `monsters.txt`에서 데이터를 불러와 캐릭터 및 몬스터를 생성  
- 게임 종료 후 결과 (`result.txt`) 저장  

✅ **게임 종료 조건**  
- 캐릭터의 체력이 0이 되면 **게임 오버 (패배)**  
- 모든 몬스터를 처치하면 **게임 클리어 (승리)**  

### **🚀 실행 방법**  

#### **1️⃣ 프로젝트 클론**
```sh
git clone <repository_url>
cd RPG_Game
```

#### **2️⃣ Dart 실행**
```sh
dart main.dart
```

#### **3️⃣ 게임 진행 예시**
```
게임을 시작합니다!
용사님의 체력: 100, 공격력: 20, 방어력: 5
슬라임이 등장했습니다!
행동을 선택하세요: 1. 공격  2. 방어
> 1
용사가 슬라임을 공격하여 15의 피해를 입혔습니다.
슬라임이 반격하여 2의 피해를 입었습니다.
...
게임 승리! 결과가 저장되었습니다.
```

### **📩 Contact**  
궁금한 점이 있으면 언제든지 질문해주세요! 😊  
chandoli21@gmail.com
