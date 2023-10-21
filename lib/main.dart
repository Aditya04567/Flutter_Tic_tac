import 'package:flutter/material.dart';

void main() {
  runApp(TicTacToeApp());
}

class TicTacToeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tic Tac Toe',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: TicTacToePage(),
    );
  }
}

class TicTacToePage extends StatefulWidget {
  @override
  _TicTacToePageState createState() => _TicTacToePageState();
}

class _TicTacToePageState extends State<TicTacToePage> {
  // A list of 9 values to represent the board state
  List<String> board = List.filled(9, '');

  // A boolean value to indicate the current player's turn
  bool xTurn = true;

  // A string value to store the game result
  String result = '';

  // A method to check if the board is full
  bool isFull() {
    return board.every((element) => element != '');
  }

  // A method to check if there is a winner
  bool hasWinner() {
    // Check rows
    for (int i = 0; i < 9; i += 3) {
      if (board[i] != '' && board[i] == board[i + 1] && board[i] == board[i + 2]) {
        return true;
      }
    }
    // Check columns
    for (int i = 0; i < 3; i++) {
      if (board[i] != '' && board[i] == board[i + 3] && board[i] == board[i + 6]) {
        return true;
      }
    }
    // Check diagonals
    if (board[0] != '' && board[0] == board[4] && board[0] == board[8]) {
      return true;
    }
    if (board[2] != '' && board[2] == board[4] && board[2] == board[6]) {
      return true;
    }
    // No winner
    return false;
  }

  // A method to handle the user's tap on a tile
  void handleTap(int index) {
    // If the tile is empty and the game is not over, update the board state
    if (board[index] == '' && result == '') {
      setState(() {
        board[index] = xTurn ? 'X' : 'O';
        xTurn = !xTurn;
      });
      // Check if there is a winner or a draw
      if (hasWinner()) {
        setState(() {
          result = '${xTurn ? 'O' : 'X'} wins!';
        });
      } else if (isFull()) {
        setState(() {
          result = 'It\'s a draw!';
        });
      }
    }
  }

  // A method to reset the game state
  void resetGame() {
    setState(() {
      board = List.filled(9, '');
      xTurn = true;
      result = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tic Tac Toe'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'It\'s ${xTurn ? 'X' : 'O'}\'s turn',
              style: TextStyle(fontSize: 24),

            ),
            SizedBox(height: 16),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              children: List.generate(9, (index) {
                return GestureDetector(
                  onTap: () => handleTap(index),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Center(
                      child: Text(
                        board[index],
                        style: TextStyle(fontSize: 36),
                      ),
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 16),
            Text(
              result,
              style: TextStyle(fontSize: 24, color: Colors.red),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: resetGame,
              child: Text('Reset Game'),
            ),
          ],
        ),
      ),
    );
  }
}
