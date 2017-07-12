(ns tic-tac-toe.cli-spec
  (:require [speclj.core :refer :all]
            [tic-tac-toe.cli :refer :all]))

(describe "CLI"
  (it "Welcomes the user"
    (should= "Tic Tac Toe\n"
      (with-out-str (welcome))))

  (it "Prints the board"
    (should= " A1  | A2  | A3  \n-----------------\n B1  | B2  | B3  \n-----------------\n C1  | C2  | C3  \n"
      (with-out-str (print-board)))))


