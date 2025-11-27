# Chess Web Application

A web-based Chess game application built with PHP, JavaScript, and MySQL. This project allows two players to play chess against each other on the same device, featuring multiple game modes, a ranking system, and game history.

## Features

*   **Local Multiplayer:** Two players can log in on the same screen to play against each other.
*   **Game Modes:**
    *   **Blitz:** 3 minutes + 2 seconds increment.
    *   **Rapid:** 12 minutes + 3 seconds increment.
    *   **Standard:** 60 minutes + 30 seconds increment.
*   **User System:**
    *   User Registration (Sign In).
    *   Login for two players simultaneously.
    *   Account Deletion.
*   **Game Features:**
    *   Valid move highlighting.
    *   Pause game functionality.
    *   Surrender option.
    *   Check and Checkmate detection.
*   **Statistics:**
    *   **Top Five:** Leaderboard showing the top 5 players by Elo rating.
    *   **Game History:** View the last 5 games played by a user.

## Technologies Used

*   **Frontend:** HTML5, CSS3, JavaScript (Vanilla).
*   **Backend:** PHP.
*   **Database:** MySQL.

## Installation & Setup

### Prerequisites

*   A web server with PHP support (e.g., Apache, XAMPP, WAMP).
*   MySQL Database server.

### Steps

1.  **Clone the repository** or download the source code to your web server's root directory (e.g., `htdocs` or `www`).

2.  **Database Setup:**
    *   Open your MySQL management tool (e.g., phpMyAdmin).
    *   Create a new database named `peruzzi_672602` (or whatever you prefer, but you'll need to update the config).
    *   Import the `database.sql` file located in the root of the project into your created database.

3.  **Configuration:**
    *   Open `php/DB_connection.php`.
    *   Update the database connection details if necessary:
        ```php
        $conn_info = 'mysql:host=localhost;dbname=peruzzi_672602';
        $username = 'root'; // Your database username
        $password = '';     // Your database password
        ```

4.  **Run the Application:**
    *   Open your web browser and navigate to the project folder (e.g., `http://localhost/progetto-pweb/`).

## Project Structure

```
progetto-pweb/
├── css/                # Stylesheets for different pages
├── html/               # HTML views and PHP pages
│   └── errors/         # Error pages (403, 404, 500, etc.)
├── images/             # Images and icons
│   └── pezzi/          # SVG icons for chess pieces
├── js/                 # JavaScript files for game logic and UI
├── php/                # PHP scripts for backend logic and DB requests
├── database.sql        # Database schema import file
├── index.php           # Main entry point (Login/Home page)
└── LICENSE             # License file
```

## How to Play

1.  **Register:** If you don't have accounts, go to the menu (top right) and select "Sign In" to create two accounts.
2.  **Login:** On the home page (`index.php`), both Player 1 (White) and Player 2 (Black) must log in with their credentials.
3.  **Select Mode:** Choose a game mode (Blitz, Rapid, or Standard).
4.  **Start Game:** Click "PLAY" to start the match.
5.  **Gameplay:**
    *   Click on a piece to see valid moves.
    *   Click on a highlighted square to move.
    *   Use the "Pause" or "Surrender" buttons if needed.

## License

This project is licensed under the terms specified in the `LICENSE` file.
