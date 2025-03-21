import 'dart:io';
import 'character.dart';
import 'monster.dart';

Character loadCharacter() {
  var file = File('characters.txt');
  var lines = file.readAsLinesSync();
  var data = lines[0].split(',');

  return Character(data[0], int.parse(data[1]), int.parse(data[2]), int.parse(data[3]));
}

List<Monster> loadMonsters() {
  var file = File('monsters.txt');
  var lines = file.readAsLinesSync();
  List<Monster> monsters = [];

  for (var line in lines) {
    var data = line.split(',');
    monsters.add(Monster(data[0], int.parse(data[1]), int.parse(data[2])));
  }

  return monsters;
}
