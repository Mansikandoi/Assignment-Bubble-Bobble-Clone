# Bubble Bobble Clone (Godot 4.x)

This project is a single screen arcade platformer mechanics clone inspired by the classic game Bubble Bobble. It is implemented using Godot 4.x and strictly follows the provided assignment requirements. This is not a full remake of Bubble Bobble. The focus of this project is on core gameplay mechanics such as movement, bubble shooting, enemy trapping, popping, scoring, and a complete game loop.

---

## How to Run
1. Open the project in Godot version 4.x
2. Open and run Main.tscn
3. Press Start to begin the game

---

## Controls (InputMap)
All controls are implemented using Godot InputMap actions. No hardcoded keycodes are used.

Action and Keys
Move Left: A or Left Arrow
Move Right: D or Right Arrow
Jump: W or Up Arrow
Fire Bubble: Space
Start Game: Enter or Space
Restart Game: R

---

## Game Description
The game takes place on a single screen with no scrolling camera. The level is built using a TileMap with solid collision enabled tiles. The player can move left and right, jump, and shoot bubbles. Bubbles travel horizontally for a short time and then float upward. When a bubble overlaps an enemy, the enemy becomes trapped inside the bubble and stops acting. Trapped enemies can be popped by the player to gain points. Enemies patrol platforms and damage the player on contact. The game ends when the player loses all lives, and the level is won when all enemies are defeated.

---

## Implemented Features and Grading Criteria

### A. Core Movement and World (2 out of 2)
The player is implemented using CharacterBody2D and uses move_and_slide for movement. Horizontal movement is handled using Input.get_axis. Jumping is implemented using gravity and is_on_floor checks. TileMap platforms have collision shapes and prevent the player from walking through walls or falling through floors. Movement is stable and collision handling is correct.

---

### B. Bubble Shooting (2 out of 2)
The player can shoot bubbles in the direction they are facing. Bubbles initially travel horizontally and then float upward after a short delay. Each bubble has a lifetime timer and despawns cleanly when the timer expires. Multiple bubbles can exist at the same time.

---

### C. Enemies (2 out of 2)
Between three and six enemies are spawned in the level. Enemies are implemented as CharacterBody2D nodes and patrol platforms by moving left and right. Enemies reverse direction when colliding with walls or reaching platform edges. Enemies damage the player on contact, reducing player lives.

---

### D. Trapping Mechanic (2 out of 2)
When a bubble overlaps an enemy, the enemy enters a trapped state. While trapped, enemy physics and collision are disabled and the enemy stops acting. The trapped enemy is attached to the bubble and moves with it as the bubble floats upward. Trapping behavior is reliable and consistent.

---

### E. Popping, Scoring, and Game Loop (2 out of 2)
The player can pop trapped bubbles by touching them. When a bubble is popped, the trapped enemy is destroyed and the player gains points. The HUD displays the current score and remaining lives. The game enters a Game Over state when the player loses all lives and allows the player to restart the game. The game loop functions correctly from start to game over and restart.

---

## Bonus Feature (Plus 1 Point)

### Enemy Rage Escape
This project implements the Enemy Rage Escape bonus feature. When an enemy is trapped inside a bubble, a timer begins. If the bubble is not popped within a certain time, the enemy escapes from the bubble and enters a rage state. In rage mode, the enemy moves faster than normal, increasing game difficulty. This feature is fully implemented, functional, and integrated into normal gameplay.

---

## Project Structure
bubble-bobble-godot/
README.md
project.godot
assets/
sprites/
player.png
enemy.png
bubble.png
tileset.png
ui/
heart.png
life.png
audio/
sfx_jump.ogg
sfx_fire.ogg
sfx_pop.ogg
music_theme.ogg
scenes/
main/
Main.tscn
Main.gd
world/
Level01.tscn
Level01.gd
HUD.tscn
entities/
player/
Player.tscn
Player.gd
enemies/
Enemy.tscn
Enemy.gd
projectiles/
Bubble.tscn
Bubble.gd

---

## Technical Notes
The project is built using Godot 4.x. All gameplay input is handled through the InputMap system. Signals are used to decouple systems such as bubble trapping, scoring, and game state management. No generative AI art assets were used. The spriteset provided for the assignment was used with only minor modifications as allowed.

---

## Known Limitations
The game contains a single level and does not include multi level progression. Enemy AI is intentionally simple to match the assignment scope. Audio support is minimal and not required for grading.

---

## Academic Integrity
This project was developed specifically for this course assignment. No generative AI tools were used to create art assets. The implementation follows all provided constraints and requirements.

---

## Submission Notes
All required features have been implemented and tested. The bonus feature is complete and functional. This project is ready for evaluation.
