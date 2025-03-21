class Monster {
  String name;
  int health;
  int attackPower;

  Monster(this.name, this.health, this.attackPower);

  void showStatus() {
    print('[몬스터] 이름: $name | 체력: $health | 공격력: $attackPower');
  }
}
