(ns tic-tac-toe.output-spec
  (:require [speclj.core :refer :all]
            [tic-tac-toe.output :refer :all]))

(describe "Output"
  (it "Welcomes user"
    (should-contain "Tic Tac Toe"
      (with-out-str (print-message (welcome)))))

  (it "asks for player type for X"
    (should-contain "Select player type for X\n1) Human"
      (with-out-str(print-message (player-type "X")))))

  (it "asks for player type for O"
    (should-contain "Select player type for O\n1) Human\n2) Random Computer"
      (with-out-str(print-message (player-type "O")))))

  (it "prompts X to take turn"
    (should-contain "X, take your turn"
      (with-out-str (print-message (take-turn [])))))

  (it "prompts O to take their turn"
    (should-contain "O, take your turn"
      (with-out-str (print-message (take-turn [0])))))

  (it "prints the board - empty"
    (should-contain "  A | B | C\n1   |   |  \n------------\n2   |   |  \n------------\n3   |   |  \n"
      (with-out-str (print-message (format-board [])))))

  (it "prints the board - one move"
    (should-contain "  A | B | C\n1 X |   |  \n------------\n2   |   |  \n------------\n3   |   |  \n"
      (with-out-str (print-message (format-board [0])))))

  (it "prints game over"
    (should-contain "Game Over"
      (with-out-str (print-message (game-over [0 6 1 7 2])))))

  (it "prints tied game"
    (should-contain "Game Tied"
      (with-out-str (print-message (game-over [0 1 2 3 4 8 5 6 7])))))

  (it "prints X wins"
    (should-contain "X is the winner"
      (with-out-str (print-message (game-over [0 6 1 7 2])))))

  (it "prints O wins"
    (should-contain "O is the winner"
      (with-out-str (print-message (game-over [0 4 3 1 2 7]))))))
