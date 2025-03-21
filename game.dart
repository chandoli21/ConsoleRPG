import 'character.dart';
import 'monster.dart';

class Game {
  Character? player;
  List<Monster> monsters = [];

  Game() {
    // 간단한 캐릭터 및 몬스터 생성
    player = Character("용사", 100, 20, 5);
    monsters.add(Monster("슬라임", 30, 5));
    monsters.add(Monster("고블린", 50, 10));
  }

  void startGame() {
    print("게임을 시작합니다!");
    player!.showStatus();
    for (var monster in monsters) {
      monster.showStatus();
    }
  }
}
