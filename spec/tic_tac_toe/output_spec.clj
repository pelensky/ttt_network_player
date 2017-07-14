(ns tic-tac-toe.output-spec
  (:require [speclj.core :refer :all]
            [tic-tac-toe.output :refer :all]))

(describe "Output"
  (it "Welcomes user"
    (should= "Tic Tac Toe\n"
      (with-out-str (print-welcome))))

  (it "prompts X to take turn"
    (should= "X, take your turn\n"
      (with-out-str (print-take-turn []))))

  (it "prompts O to take their turn"
    (should= "O, take your turn\n"
      (with-out-str (print-take-turn [0]))))

  (it "prints the board - empty"
    (should= "  A | B | C\n1   |   |  \n------------\n2   |   |  \n------------\n3   |   |  \n\n"
      (with-out-str (print-board []))))

  (it "prints the board - one move"
    (should= "  A | B | C\n1 X |   |  \n------------\n2   |   |  \n------------\n3   |   |  \n\n"
      (with-out-str (print-board [0]))))

  (it "prints game over"
    (should= "Game Over\n"
      (with-out-str (print-game-over)))))


