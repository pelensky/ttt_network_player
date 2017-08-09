# Unbeatable Tic Tac Toe Player - AWS Lambda

This is an unbeatable computer player that is deployed on an AWS Lambda. 

It requires a board state in the following format:
```
{
  "boardState": "{:size SIZE :board [MOVES]}"
}
```
where size is the number of rows, and moves is a vector of sequential moves (0
indexed) ie. On a size 3 board, the top left corner is 0, middle is 4, bottom right corner is 8.

To call:

```curl -H "Content-Type: application/json" -X POST -d "{\"boardState\": \"{ :size SIZE :board [MOVES]}\"}" https://xast1bug7h.execute-api.us-east-1.amazonaws.com/ttt```

Full Example: 
```curl -H "Content-Type: application/json" -X POST -d "{\"boardState\": \"{
:size 3 :board [0 1 2 3 4 8 5 6]}\"}"
https://xast1bug7h.execute-api.us-east-1.amazonaws.com/ttt```

Examples to test: 
1. Only available space - `{ :size 3 :board [0 1 2 3 4 8 5 6] }` - returns 7
2. Winning space - `{:size 3 :board [0 1 2 3 4 8]}` - returns 6
3. Blocks a win - `{:size 3 :board [0 1 4]}` - returns 8

[Additional
examples](https://github.com/pelensky/clojure_ttt/blob/master/spec/tic_tac_toe/unbeatable_computer_spec.clj)

#### The Rules

The rules of tic-tac-toe are as follows:

* There are two players in the game (X and O)
* Players take turns until the game is over
* A player can claim a field if it is not already taken
* A turn ends when a player claims a field
* A player wins if they claim all the fields in a row, column or diagonal
* A game is over if a player wins
* A game is over when all fields are taken
