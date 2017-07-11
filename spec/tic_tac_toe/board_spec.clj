(ns tic-tac-toe.board-spec
  (:require [speclj.core :refer :all]
            [tic-tac-toe.board :refer :all]))

(describe "Board"
  (it "X can play"
    (should= [1]
      (take-turn 1))))
