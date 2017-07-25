(ns tic-tac-toe.unbeatable-computer-spec
  (:require [speclj.core :refer :all]
            [tic-tac-toe.unbeatable-computer :refer :all]))

(describe "Perfect computer"

          (it "chooses the only available space"
              (should= 7
                       (choose-space { :size 3 :board [0 1 2 3 4 8 5 6]})))

          (it "finds the marker if X"
              (should= "X"
                       (find-computer-marker {:size 3 :board []})))
          (it "finds the marker if O"
              (should= "O"
                      (find-computer-marker {:size 3 :board [0]}))))
