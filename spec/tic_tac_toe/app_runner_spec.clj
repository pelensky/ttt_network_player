(ns tic-tac-toe.app-runner-spec
  (:require [speclj.core :refer :all]
            [tic-tac-toe.app-runner :refer :all]))

(describe "App Runner"

  (it "Prints Welcome"
    (should-contain "Tic Tac Toe"
      (with-out-str (with-in-str "0\n4\n1\n2\n6\n3\n5\n7\n8"
        (play)))))

  (it "Prints players turn"
    (should-contain "X, take your turn"
      (with-out-str (with-in-str "0\n4\n1\n2\n6\n3\n5\n7\n8"
        (play)))))

  (it "Plays game until board is full"
    (should-contain "Game Over\n"
      (with-out-str (with-in-str "0\n4\n1\n2\n6\n3\n5\n7\n8"
        (play)))))

  (it "single turn returns board"
    (should= [1]
      (with-in-str "1"
      (single-turn [])))))
