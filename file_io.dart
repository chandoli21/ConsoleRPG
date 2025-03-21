import 'dart:io';
import 'character.dart';
import 'monster.dart';

Character loadCharacter() {
  try {
    final file = File('characters.txt');
    final contents = file.readAsStringSync();
    final stats = contents.split(',');
    if (stats.length != 3) throw FormatException('Invalid character data');

    int health = int.parse(stats[0]);
    int attack = int.parse(stats[1]);
    int defense = int.parse(stats[2]);

    print("캐릭터 이름을 입력하세요:");
    String? name = stdin.readLineSync();
    if (name == null || name.isEmpty || !RegExp(r'^[a-zA-Z가-힣]+$').hasMatch(name)) {
      throw FormatException('Invalid character name');
    }

    return Character(name, health, attack, defense);
  } catch (e) {
    print('캐릭터 데이터를 불러오는 데 실패했습니다: $e');
    exit(1);
  }
}

List<Monster> loadMonsters() {
  try {
    final file = File('monsters.txt');
    final lines = file.readAsLinesSync();
    List<Monster> monsters = [];

    for (var line in lines) {
      final stats = line.split(',');
      if (stats.length != 3) throw FormatException('Invalid monster data');

      String name = stats[0];
      int health = int.parse(stats[1]);
      int maxAttackPower = int.parse(stats[2]);

      monsters.add(Monster(name, health, maxAttackPower));
    }

    return monsters;
  } catch (e) {
    print('몬스터 데이터를 불러오는 데 실패했습니다: $e');
    exit(1);
  }
}