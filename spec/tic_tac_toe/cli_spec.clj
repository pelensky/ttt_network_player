(ns tic-tac-toe.cli-spec
  (:require [speclj.core :refer :all]
            [tic-tac-toe.cli :refer :all]))

(describe "CLI"
  (it "Welcomes the user"
    (should= "Tic Tac Toe\n"
      (with-out-str (print-welcome))))

  (it "prompts X to take their turn first"
    (should= "X, take your turn\n"
      (with-out-str (print-take-turn [] ))))

  (it "prompts O to take their turn if X has played"
    (should= "O, take your turn\n"
      (with-out-str (print-take-turn [0] ))))

  (it "prints the board - empty"
    (should= "  A | B | C \n1   |   |   \n------------\n2   |   |   \n------------\n3   |   |   \n"
      (with-out-str (print-board []))))

  (xit "prints the board - one move"
    (should= "  A | B | C \n1 X |   |   \n------------\n2   |   |   \n------------\n3   |   |   \n"
      (with-out-str (print-board [0]))))

  (it "creates a vector with the moves - one move"
    (should= ["X" nil nil nil nil nil nil nil nil]
      (convert-board [0])))

  (it "creates a vector with the moves - multiple moves"
    (should= ["X" "X" "O" "O" "O" "X" "X" nil nil]
      (convert-board [0 4 1 2 6 3 5]))))

