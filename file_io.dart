// filepath: [file_io.dart](http://_vscodecontentref_/1)
import 'dart:io';
import 'character.dart';
import 'monster.dart';

Character loadCharacter() {
  try {
    var file = File('characters.txt');
    var lines = file.readAsLinesSync();
    var data = lines[0].split(',');

    return Character(data[0], int.parse(data[1]), int.parse(data[2]), int.parse(data[3]));
  } catch (e) {
    print('Error loading character: $e');
    print('Using default character.');
    return Character('Hero', 100, 20, 10); // Default character
  }
}

List<Monster> loadMonsters() {
  try {
    var file = File('monsters.txt');
    var lines = file.readAsLinesSync();
    List<Monster> monsters = [];

    for (var line in lines) {
      var data = line.split(',');
      monsters.add(Monster(data[0], int.parse(data[1]), int.parse(data[2])));
    }

    return monsters;
  } catch (e) {
    print('Error loading monsters: $e');
    print('Using default monsters.');
    return [
      Monster('Goblin', 50, 10),
      Monster('Orc', 80, 15),
      Monster('Dragon', 150, 30)
    ]; // Default monsters
  }
}