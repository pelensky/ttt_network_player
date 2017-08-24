# Unbeatable Tic Tac Toe Player - AWS Lambda

This is an unbeatable computer player that is deployed on an AWS Lambda. 

This is used in my [Clojure Tic Tac Toe](https://github.com/pelensky/clojure_ttt).

The API requires a board state in JSON format with a "uuid", "size", and
"board", where size is the number of rows, and moves is a vector of sequential moves (0
indexed) ie. On a size 3 board, the top left corner is 0, middle is 4, bottom right corner is 8.

Examples to test: 
1. X chooses the only available space - `{ :size 3 :board [0 1 2 3 4 8 5 6] }` - returns 7
2. X wins the game - `{:size 3 :board [0 1 2 3 4 8]}` - returns 6
3. O wins the game - `{:size 3 :board [0 2 4 8 6]}` - returns 5
4. X blocks a win - `{:size 3 :board [0 8 6]}` - returns 3
5. O blocks a win - `{:size 3 :board [0 1 4]}` - returns 8

#### The Rules

The rules of tic-tac-toe are as follows:

* There are two players in the game (X and O)
* Players take turns until the game is over
* A player can claim a field if it is not already taken
* A turn ends when a player claims a field
* A player wins if they claim all the fields in a row, column or diagonal
* A game is over if a player wins
* A game is over when all fields are taken
