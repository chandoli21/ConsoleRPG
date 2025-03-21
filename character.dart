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

  void defend() {
    print('$name이(가) 방어 태세를 취합니다.');
  }

  void showStatus() {
    print('[캐릭터 상태] 이름: $name | 체력: $health | 공격력: $attackPower | 방어력: $defensePower');
  }
}
