(ns tic-tac-toe.random-computer-spec
  (:require [speclj.core :refer :all]
            [tic-tac-toe.random-computer :refer :all]))

(describe "Random computer"
  (it "chooses the only available space"
    (should= 7
      (choose-space [0 1 2 3 4 8 5 6])))

  (it "does not choose a taken space"
    (should-not= 0
      (choose-space [0]))))
