import 'monster.dart';

class Character {
  String name;
  int health;
  int attackPower;
  int defensePower;

  Character(this.name, this.health, this.attackPower, this.defensePower);

  void attackMonster(Monster monster) {
    int damage = attackPower - monster.defensePower;
    if (damage < 0) damage = 0;
    monster.health -= damage;
    print('$name이(가) ${monster.name}에게 $damage의 피해를 입혔습니다.');
  }

  void defend(Monster monster) {
    int monsterAttackPower = monster.maxAttackPower;
    int damage = monsterAttackPower - defensePower;
    int recoveredHealth = damage > 0 ? damage : 0;
    print('$name이(가) 방어 태세를 취합니다. 체력이 $recoveredHealth만큼 회복되었습니다.');
  }

  void showStatus() {
    print('[캐릭터 상태] 이름: $name | 체력: $health | 공격력: $attackPower | 방어력: $defensePower');
  }
}
