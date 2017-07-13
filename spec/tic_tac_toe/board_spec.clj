(ns tic-tac-toe.board-spec
  (:require [speclj.core :refer :all]
            [tic-tac-toe.board :refer :all]))

(describe "Board"
  (it "X can play"
    (should= [1]
      (take-turn 1 [])))

  (it "X can play in any spot"
    (should= [0]
      (take-turn 0 [])))

  (it "O can play after x"
    (should= [8 1]
      (take-turn 1 [8])))

  (it "can check an empty space"
    (should= nil
      (check-value-of-space 0 [])))

  (it "can check a taken space"
    (should= "X"
      (check-value-of-space 0 [0])))

  (it "can check a space taken by O"
    (should= "O"
      (check-value-of-space 5 [0 5]))))
