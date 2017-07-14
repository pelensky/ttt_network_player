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

(describe "End of game"
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

  (it "gets the rows - no moves"
    (should-contain [[nil nil nil] [nil nil nil] [nil nil nil]]
      (winning-scenarios [])))

  (it "gets the rows - some moves"
    (should-contain [["X" "X" "O"] ["O" "O" "X"] ["X" nil nil]]
      (winning-scenarios [0 4 1 2 6 3 5])))

  (it "gets the rows"
    (should-contain [["X" "O" "X"] ["X" "O" nil] ["O" "X" nil]]
      (winning-scenarios [0 4 1 2 6 3 5]))))
