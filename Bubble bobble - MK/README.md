# Bubble Bobble Clone

This project is a single screen arcade platformer mechanics clone inspired by the classic game Bubble Bobble. The game is developed using Godot Engine version 4.5.1. The project focuses on implementing core gameplay mechanics including player movement, bubble shooting, enemy trapping, popping, scoring, and a complete game loop. This project is a mechanics clone and not a full remake of the original game.

---

## Engine Version
Godot Engine 4.5.1

---

## How to Run
1. Open the project folder in Godot 4.5.1
2. Open Main.tscn
3. Run the project
4. Press Start to begin the game

---

## Controls
All controls are implemented using Godot InputMap actions.

Move Left: A or Left Arrow  
Move Right: D or Right Arrow  
Jump: W or Up Arrow  
Fire Bubble: Space  
Start Game: Enter or Space  
Restart Game: R  

---

## Game Description
The game takes place on a single screen with no camera scrolling. The level is created using a TileMap with solid collision tiles. The player can move left and right, jump using gravity, and shoot bubbles. Bubbles move horizontally for a short duration before floating upward. When a bubble overlaps an enemy, the enemy becomes trapped inside the bubble and stops acting. Trapped enemies can be popped by the player to gain points. Enemies patrol platforms and damage the player on contact. The game ends when the player loses all lives and can be restarted. The level is completed when all enemies are defeated.

---

## Implemented Gameplay Features

### Player Movement and World
The player is implemented as a CharacterBody2D and uses move_and_slide for movement. Horizontal movement is handled using Input.get_axis. Jumping uses gravity and is_on_floor checks. TileMap platforms include collision shapes that prevent the player from walking through walls or floors. Player movement is stable and responsive.

---

### Bubble Shooting
The player can shoot bubbles in the direction they are facing. Bubbles initially move horizontally and then float upward. Each bubble has a lifetime timer and despawns automatically. Multiple bubbles can exist at the same time.

---

### Enemies
Multiple enemies spawn in the level and patrol platforms by moving left and right. Enemies reverse direction when colliding with walls or reaching edges. Enemies damage the player on contact and reduce player lives.

---

### Trapping Mechanic
When a bubble overlaps an enemy, the enemy enters a trapped state. While trapped, enemy physics and collision are disabled and the enemy stops moving. The trapped enemy is attached to the bubble and moves with it as the bubble floats upward.

---

### Popping, Scoring, and Game Loop
The player can pop trapped bubbles by touching them. When a bubble is popped, the trapped enemy is destroyed and the player gains points. The HUD displays the current score and remaining lives. When the player loses all lives, a Game Over screen appears and the game can be restarted.

---

## Bonus Feature

### Enemy Rage Escape
The game includes an enemy rage escape mechanic. When an enemy is trapped inside a bubble, a timer starts. If the bubble is not popped within a set time, the enemy escapes and enters a rage state. In this state, the enemy moves faster than normal, increasing the challenge for the player.

---

## Project File Structure
The project follows the required repository structure.

bubble-bobble-godot/
├─ README.md
├─ .gitignore
├─ project.godot
├─ assets/
│  ├─ sprites/
│  │  ├─ player.png
│  │  ├─ enemy.png
│  │  ├─ bubble.png
│  │  ├─ tileset.png
│  │  └─ ui/
│  │     ├─ heart.png
│  │     └─ life.png
│  ├─ audio/
│  │  ├─ sfx_jump.ogg
│  │  ├─ sfx_fire.ogg
│  │  ├─ sfx_pop.ogg
│  │  └─ music_theme.ogg
│  └─ fonts/
│     └─ ui_font.tres
├─ scenes/
│  ├─ main/
│  │  ├─ Main.tscn
│  │  └─ Main.gd
│  ├─ screens/
│  │  ├─ Menu.tscn
│  │  ├─ Menu.gd
│  │  ├─ GameOver.tscn
│  │  └─ GameOver.gd
│  ├─ world/
│  │  ├─ Level01.tscn
│  │  ├─ Level01.gd
│  │  └─ HUD.tscn
│  └─ entities/
│     ├─ player/
│     │  ├─ Player.tscn
│     │  └─ Player.gd
│     ├─ enemies/
│     │  ├─ Enemy.tscn
│     │  └─ Enemy.gd
│     └─ projectiles/
│        ├─ Bubble.tscn
│        └─ Bubble.gd
├─ scripts/
│  ├─ core/
│  │  ├─ Constants.gd
│  │  ├─ Save.gd
│  │  └─ Utils.gd
│  ├─ managers/
│  │  ├─ GameManager.gd
│  │  ├─ AudioManager.gd
│  │  └─ SpawnManager.gd
│  └─ tuning/
│     ├─ PlayerTuning.gd
│     ├─ BubbleTuning.gd
│     └─ EnemyTuning.gd
├─ resources/
│  ├─ tilesets/
│  │  └─ LevelTileset.tres
│  └─ tuning/
│     ├─ player_default.tres
│     ├─ bubble_default.tres
│     └─ enemy_default.tres

---

## Additional Notes
All gameplay input uses the Godot InputMap system. Signals are used to handle interactions such as enemy trapping, scoring, and game state transitions. The provided spriteset was used with minor modifications. No generative AI tools were used to create art assets.

---

## Submission Summary
The project implements all required mechanics including player movement, bubble shooting, enemy behavior, trapping, popping, scoring, HUD display, and a complete game loop. The bonus enemy rage escape feature is implemented and fully functional.
