import 'dart:math';
import 'character.dart';

class Monster {
  String name;
  int health;
  int maxAttackPower;
  int defensePower = 0;

  Monster(this.name, this.health, this.maxAttackPower);

  void attackCharacter(Character character) {
    int attackPower = max(0, maxAttackPower - character.defensePower);
    character.health -= attackPower;
    print('$name이(가) ${character.name}에게 $attackPower의 피해를 입혔습니다.');
  }

  void showStatus() {
    print('[몬스터 상태] 이름: $name | 체력: $health | 공격력: $maxAttackPower');
  }
}
