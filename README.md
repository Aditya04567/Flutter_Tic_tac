# tic_tac_game app



This is a simple Tic Tac Toe game built with Flutter. The game provides a 3x3 grid where two players can take turns to make their moves. The objective of the game is to be the first to get three of your symbols (either 'X' or 'O') in a row, column, or diagonal. If the grid is completely filled and no player has won, the game ends in a draw.

![Screenshot 2023-10-21 161315](https://github.com/Aditya04567/Flutter_Tic_tac/assets/127686599/b11bcbf8-d712-47ca-81a1-937a816e8a8e)

[Screen_recording_20231021_184831.webm](https://github.com/Aditya04567/Flutter_Tic_tac/assets/127686599/1a43d0b5-74be-4514-9915-fa17652219a4)[Screen_recording_20231021_184831.webm](https://github.com/Aditya04567/Flutter_Tic_tac/assets/127686599/af1c498e-79bc-4897-820b-535e4de9a2ed)


## Getting Started

Follow these instructions to run the Tic Tac Toe app on your local development environment.

### Prerequisites

Before you begin, ensure you have Flutter installed. You can install Flutter by following the [official Flutter installation guide](https://flutter.dev/docs/get-started/install).

### Clone the Repository

1. Clone this Git repository to your local machine using the following command:

   ```bash
   git clone https://github.com/Aditya04567/Flutter_Tic_tac.git
   ```

### Running the App

1. Navigate to the project directory:

   ```bash
   cd tic_tac_game
   ```

2. Make sure you have connected a mobile device or emulator.

3. Run the app:

   ```bash
   flutter run
   ```

The Tic Tac Toe app should now be running on your mobile device or emulator.

## How to Play

1. Upon starting the app, you will see a 3x3 grid representing the Tic Tac Toe board.

2. Players take turns to tap on empty cells to place their symbol ('X' or 'O').

3. The game will display a message indicating whose turn it is and the game result.

4. The game will automatically detect if a player has won or if the game has ended in a draw.

5. To start a new game, tap the "Reset Game" button.

## App Structure

The app is structured into two main classes:

- `TicTacToeApp`: This class represents the entire application and sets up the MaterialApp with the app's theme.

- `TicTacToePage`: This class is responsible for the game logic and user interface. It handles the game board, player turns, and the game's state.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments

- This app was created as a simple example of a Flutter application.
- Feel free to use and modify it for learning purposes or as a starting point for your own Flutter projects.

Have fun playing Tic Tac Toe!
