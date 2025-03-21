import 'dart:io';
import 'character.dart';
import 'monster.dart';
import 'file_io.dart';
import 'dart:math';

class Game {
  Character? player;
  List<Monster> monsters = [];

  Game() {
    player = loadCharacter();
    monsters = loadMonsters();
  }

  void startGame() {
    print("게임을 시작합니다. ${player!.name}님, 환영합니다!");
    player!.showStatus();

    while (player!.health > 0 && monsters.isNotEmpty) {
      var monster = getRandomMonster();
      print("${monster.name}와(과) 전투가 시작되었습니다!");
      battle(monster);

      if (player!.health <= 0) {
        print("게임 오버! 패배하였습니다.");
        saveResult("패배");
        return;
      }
    }

    print("축하합니다! 모든 몬스터를 물리쳤습니다.");
    saveResult("승리");
  }

  void battle(Monster monster) {
    while (player!.health > 0 && monster.health > 0) {
      print("행동을 선택하세요: 1. 공격 2. 방어");
      String? input = stdin.readLineSync();

      if (input == '1') {
        player!.attackMonster(monster);
        // print('${player!.name}이(가) ${monster.name}에게 피해를 입혔습니다.');
      } else if (input == '2') {
        player!.defend(monster);
      }

      if (monster.health > 0) {
        monster.attackCharacter(player!);
      }

      player!.showStatus();
      monster.showStatus();

      if (monster.health <= 0) {
        print("${monster.name}을(를) 물리쳤습니다!");
        monsters.remove(monster);
      }
    }
  }

  Monster getRandomMonster() {
    Random random = Random();
    return monsters[random.nextInt(monsters.length)];
  }

  void saveResult(String result) {
    print("결과를 저장하시겠습니까? (y/n)");
    String? input = stdin.readLineSync();

    if (input != null && input.toLowerCase() == 'y') {
      var file = File('result.txt');
      file.writeAsStringSync('${player!.name}, ${player!.health}, $result');
      print("결과가 result.txt 파일에 저장되었습니다.");
    } else {
      print("결과 저장이 취소되었습니다.");
    }
  }
}
