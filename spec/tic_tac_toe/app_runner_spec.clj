(ns tic-tac-toe.app-runner-spec
  (:require [speclj.core :refer :all]
            [tic-tac-toe.app-runner :refer :all]))

(describe "App Runner"

  (it "Plays the game until the board is full"
    (should= "Game Over\n"
      (with-out-str (with-in-str "0\n4\n1\n2\n6\n3\n5\n7\n8"
        (play))))))
