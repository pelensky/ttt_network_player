(ns tic-tac-toe.app-runner-spec
  (:require [speclj.core :refer :all]
            [tic-tac-toe.app-runner :refer :all]))

(describe "App Runner"

  (it "Prints Welcome"
    (should-contain "Tic Tac Toe"
      (with-out-str (with-in-str "1\n1\na1\nb2\na2\na3\nc1\nb1\nb3\nc2\nc3"
        (play)))))

  (it "Prints players turn"
    (should-contain "X, take your turn"
      (with-out-str (with-in-str "1\n1\na1\nb2\na2\na3\nc1\nb1\nb3\nc2\nc3"
        (play)))))

  (it "Plays game until board is full"
    (should-contain "Game Over"
      (with-out-str (with-in-str "1\n1\na1\nb2\na2\na3\nc1\nb1\nb3\nc2\nc3"
        (play)))))

  (it "Plays game until game is tied"
    (should-contain "Game Tied"
      (with-out-str (with-in-str "1\n1\na1\nb2\na2\na3\nc1\nb1\nb3\nc2\nc3"
      (play)))))

  (it "Plays game unitl X wins"
    (should-contain "X is the winner"
      (with-out-str (with-in-str "1\n1\na1\na3\nb2\nb1\nc3"
        (play)))))

  (it "Plays game unitl O wins"
    (should-contain "O is the winner"
      (with-out-str (with-in-str "1\n1\na1\nc1\nb2\nc2\na3\nc3"
        (play)))))

  (it "single turn returns board"
    (should= [3]
      (with-in-str "A2"
      (single-turn [])))))
