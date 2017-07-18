(ns tic-tac-toe.app-runner-spec
  (:require [speclj.core :refer :all]
            [tic-tac-toe.app-runner :refer :all]))

(describe "App Runner"

  (it "Prints Welcome"
    (should-contain "Tic Tac Toe"
      (with-out-str (with-in-str "a1\nb2\na2\na3\nc1\nb1\nb3\nc2\nc3"
        (play)))))

  (it "Prints players turn"
    (should-contain "X, take your turn"
      (with-out-str (with-in-str "a1\nb2\na2\na3\nc1\nb1\nb3\nc2\nc3"
        (play)))))

  (it "Plays game until board is full"
    (should-contain "Game Over"
      (with-out-str (with-in-str "a1\nb2\na2\na3\nc1\nb1\nb3\nc2\nc3"
        (play)))))

  (it "Plays game until board is full"
    (should-contain "Game Tied"
      (with-out-str (with-in-str "a1\nb2\na2\na3\nc1\nb1\nb3\nc2\nc3"
      (play)))))

  (it "single turn returns board"
    (should= [3]
      (with-in-str "A2"
      (single-turn [])))))
