# CITY HUSTLE Game

## About the Game
 This is a 2D game where the player explores different parts of a city. 
The player can move around different scenes, interact with vendors, collect items, and earn coins by completing simple tasks. 
The main focus of the project is building game systems like tasks, inventory, and scene transitions that work smoothly together.

---

##  How to Play
- Move using Arrow Keys( Up Down Left Right)and space to jump
- Press **E** to interact with vendors
- Pick up items like apples
- Complete tasks to earn coins
- Travel between different areas like the marketplace and coffee shop

---
##  Features
- Coins that persist across scene changes
- Task system with rewards (example: sell an apple for coins)
- Inventory system for collecting items
- Vendor interactions using Area2D
- On-screen UI that updates coin count in real time
- Multiple scenes connected by doors

---
## Game Systems
### Coins
Coins are stored globally, so they don’t reset when the player changes scenes. You earn coins by completing tasks and collecting items in the world.

### Tasks
Vendors give tasks that the player can complete once. After a task is finished, it can’t be repeated, which prevents farming rewards.

### Inventory
Items like apples are tracked using an inventory system. Tasks check the inventory before allowing completion.

---

## project teammates 
Raisa Noor, Sophia Moreira, Kareena Sharif, Fahmida Moumita
