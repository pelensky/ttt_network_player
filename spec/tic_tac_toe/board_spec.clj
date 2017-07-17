(ns tic-tac-toe.board-spec
  (:require [speclj.core :refer :all]
            [tic-tac-toe.board :refer :all]))

(describe "Taking turns"
  (it "X plays"
    (should= [1]
      (take-turn 1 [])))

  (it "X play in a different space"
    (should= [0]
      (take-turn 0 [])))

  (it "O play after X"
    (should= [8 1]
      (take-turn 1 [8])))

  (it "check value of empty space"
    (should= nil
      (check-value-of-space 0 [])))

  (it "check value of taken space"
    (should= "X"
      (check-value-of-space 0 [0])))

  (it "check value of a space taken by O"
    (should= "O"
      (check-value-of-space 5 [0 5])))

  (it "rejects duplicate values"
    (should= [0 1 2]
      (take-turn 0 [0 1 2]))))

(describe "Split Board"
  (it "creates a vector with moves - one"
    (should= ["X" nil nil nil nil nil nil nil nil]
      (convert-board [0])))

  (it "creates a vector with moves - multiple"
    (should= ["X" "X" "O" "O" "O" "X" "X" nil nil]
      (convert-board [0 4 1 2 6 3 5])))

  (it "splits the vector into three"
    (should= [["X" "X" "O"] ["O" "O" "X"] ["X" nil nil]]
      (split-board-into-rows ["X" "X" "O" "O" "O" "X" "X" nil nil])))

  (it "splits an empty board into three"
    (should= [[nil nil nil] [nil nil nil] [nil nil nil]]
      (split-board-into-rows [nil nil nil nil nil nil nil nil nil])))

  (it "gets row 1"
    (should-contain ["X" "X" "O"]
      (winning-scenarios [0 4 1 2 6 3 5])))

  (it "gets row 2"
    (should-contain ["O" "O" "X"]
      (winning-scenarios [0 4 1 2 6 3 5])))

  (it "gets row 3"
    (should-contain ["X" nil nil]
      (winning-scenarios [0 4 1 2 6 3 5])))

  (it "gets column 1"
    (should-contain ["X" "O" "X"]
      (winning-scenarios [0 4 1 2 6 3 5])))

  (it "gets column 2"
    (should-contain ["X" "O" nil]
      (winning-scenarios [0 4 1 2 6 3 5])))

  (it "gets column 3"
    (should-contain ["O" "X" nil]
      (winning-scenarios [0 4 1 2 6 3 5])))

  (it "gets the left diagonal"
    (should-contain ["X" "O" nil]
      (winning-scenarios [0 4 1 2 6 3 5])))

  (it "gets the right diagonal"
    (should-contain ["O" "O" "X"]
      (winning-scenarios [0 4 1 2 6 3 5]))))

(describe "End of game"
   (it "is over when there is a win in a row"
    (should= true
      (game-won-by? "X" [0 6 1 7 2])))

  (it "is over when there is a win in a column"
    (should= true
      (game-won-by? "O" [0 4 3 1 2 7])))

  (it "is over when there is a win in the left diagonal"
    (should= true
      (game-won-by? "X" [0 1 4 3 8])))

  (it "is over when there is a win in the right diagonal"
    (should= true
      (game-won-by? "O" [0 2 3 4 1 6])))

  (it "is not won when there are no moves"
    (should= false
      (game-won-by? "X" [])))

  (it "is not won when the game is tied"
    (should= false
      (game-won-by? "O" [0 1 2 3 4 6 5 7 8])))

  (it "is not won when the game is won by the other player"
    (should= false
      (game-won-by? "X" [0 2 3 4 1 6])))

  (it "no winner 1"
    (should= false
      (game-won-by? "X" [0 1 2 3 4 6 7 8 5])))

  (it "no winner 2"
    (should= false
      (game-won-by? "O" [0 1 2 3 4 6 7 8 5])))

  (it "checks all elements in a vector equal what it is checking"
    (should= true
      (line-won-by? "X" ["X" "X" "X"])))

  (it "is false if they are not equal"
    (should= false
      (line-won-by? "O" [nil "X" "O"])))

  (it "is tied when the board is full and nobody has won"
    (should= true
      (game-tied? [0 1 2 3 4 6 7 8 5])))

  (it "is not tied when the board is full but the game is won by X"
    (should= false
      (game-tied? [0 1 2 3 4 5 7 8 6])))

  (it "is not tied when the board is full but the game is won by X"
    (should= false
      (game-tied? [0 1 2 4 3 6 5 7])))

  (it "isn't tied when the board has no moves"
    (should= false
      (game-tied? [])))

  (it "is over when the game is won by X"
    (should= true
      (game-over? [0 6 1 7 2])))

  (it "is not over when there has been no moves"
    (should= false
      (game-over? [])))

  (it "is over when the game is won by O"
    (should= true
      (game-over? [0 4 3 1 2 7])))

  (it "is over when the game is tied"
    (should= true
      (game-over? [0 1 2 3 4 6 5 8 7]))))

