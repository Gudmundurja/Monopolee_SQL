# 🎲 Monopolee – SQL-Based Monopoly-Style Game Simulation
This project simulates a turn-based board game similar to Monopoly, entirely within a relational database environment using SQL. The game includes player movement, property purchases, rent collection, and event-based tiles, all powered by structured SQL logic.

# 📌 Key Features
🗃️ Database Schema & Setup
Normalised relational schema with tables:

players, properties, location, bonuses, tokens, audit_trail

Tables created in Monopoly_CreateTable.sql, with data populated via Monopolee_insert.sql

# 🎮 Gameplay Mechanics
Players move around the board by simulated dice rolls

Gameplay logic includes:

Buying properties (Rule 1)

Paying rent based on ownership (Rule 2)

Bonus tiles (Chance, Community Chest, Go to Jail, GO) (Rules 3–4)

Wrap-around movement logic (Rules 5–7)

Managed using SQL scripts, views, and global variables

# 🧠 Game Logic Implementation
SQL session variables (@dice, @play_count, @current_location, etc.) control game flow

View gameview combines data from players and audit_trail to display current game state

Stored procedures (e.g., GamePlay, update_audit_trail) manage rule execution and progression

# 🗂️ Files Included
Monopoly_CreateTable.sql – table creation script

Monopolee_insert.sql – sample data for players, properties, bonuses

gameplay.sql – main script for executing gameplay

global_vars.sql – defines global session variables and in-game logic

monopolee.sql – consolidated script implementing Rules 1–7

Coursework_1_understanding_databases_GJA.pdf – full report and documentation

# 🧠 Learning Outcomes
Built a functional, rule-based game using only SQL

Learned to manage state, randomness, and flow using SQL logic

Practiced integrating procedural elements (via variables and views) within a relational model

