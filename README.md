# **Dart RPG Battle Game**  

## **📌 Project Overview**  
This project is a **simple turn-based battle RPG game** implemented in Dart.  
Players control a **character that battles against multiple monsters**, making strategic choices such as attacking or defending.  
The game also includes **file input/output functionality** to load and save game data.  

---

## **📂 Project Structure**  
```
📂 RPG_Game
 ├── 📄 character.dart    # Defines the Character class
 ├── 📄 monster.dart      # Defines the Monster class
 ├── 📄 game.dart         # Game logic and mechanics
 ├── 📄 file_io.dart      # File input/output functions
 ├── 📄 main.dart         # Entry point to run the game
 ├── 📄 characters.txt    # Stores character data
 ├── 📄 monsters.txt      # Stores monster data
 ├── 📄 result.txt        # Saves game results
 ├── 📄 README.md         # Project documentation
```

---

## **⚙️ Implemented Features**  

✅ **Object-Oriented Design**  
- Uses classes (`Character`, `Monster`, `Game`) to structure the game logically  

✅ **Turn-Based Combat System**  
- Players can choose to attack or defend each turn  
- Monsters are randomly selected for battles  

✅ **File Input/Output**  
- Loads character and monster data from `characters.txt` and `monsters.txt`  
- Saves game results to `result.txt`  

✅ **Game End Conditions**  
- If the character’s health reaches 0 → **Game Over (Defeat)**  
- If all monsters are defeated → **Game Cleared (Victory)**  

---

## **🚀 How to Run the Game**  

### **1️⃣ Clone the Repository**
```sh
git clone <repository_url>
cd RPG_Game
```

### **2️⃣ Run the Game**
```sh
dart main.dart
```

### **3️⃣ Sample Gameplay**
```
The game has started!
Hero's stats: Health: 100, Attack: 20, Defense: 5
A Slime has appeared!
Choose an action: 1. Attack  2. Defend
> 1
Hero attacks Slime, dealing 15 damage.
Slime counterattacks, dealing 2 damage.
...
You defeated all monsters! Game saved.
```

---

## **📩 Contact**  
If you have any questions, feel free to ask through the email below:  
chandoli21@gmail.com
Happy Coding! 🚀  
