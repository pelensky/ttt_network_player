(ns tic-tac-toe.unbeatable-computer-spec
  (:require [speclj.core :refer :all]
            [tic-tac-toe.unbeatable-computer :refer :all]))

(describe "Perfect computer"

          (it "chooses the only available space"
              (should= 7
                       (choose-space { :size 3 :board [0 1 2 3 4 8 5 6]}))))
