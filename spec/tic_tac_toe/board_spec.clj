(ns tic-tac-toe.board-spec
  (:require [speclj.core :refer :all]
            [tic-tac-toe.board :refer :all]))

(describe "Board"
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
      (check-value-of-space 5 [0 5]))))
