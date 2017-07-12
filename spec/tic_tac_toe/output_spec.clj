(ns tic-tac-toe.output-spec
  (:require [speclj.core :refer :all]
            [tic-tac-toe.output :refer :all]))

(describe "Output"
  (it "Welcomes the user"
    (should= "Tic Tac Toe\n"
      (with-out-str (print-welcome))))

  (it "prompts X to take their turn first"
    (should= "X, take your turn\n"
      (with-out-str (print-take-turn [] ))))

  (it "prompts O to take their turn if X has played"
    (should= "O, take your turn\n"
      (with-out-str (print-take-turn [0] ))))

  (it "creates a vector with the moves - one move"
    (should= ["X" nil nil nil nil nil nil nil nil]
      (convert-board [0])))

  (it "creates a vector with the moves - multiple moves"
    (should= ["X" "X" "O" "O" "O" "X" "X" nil nil]
      (convert-board [0 4 1 2 6 3 5])))

  (it "changes nil values to spaces"
    (should= " "
      (update-space nil)))

  (it "doesn't change non-nil values"
    (should= "X"
      (update-space "X")))

  (it "creates a vector with spaces rather than nil values"
    (should= ["X" "X" "O" "O" "O" "X" "X" " " " "]
      (formatted-board-vector [0 4 1 2 6 3 5])))

  (it "creates a vector with spaces - no moves"
    (should= [" " " " " " " " " " " " " " " " " "]
      (formatted-board-vector [])))

  (it "splits the vector into three"
    (should= [["X" "X" "O"] ["O" "O" "X"] ["X" " " " "]]
      (split-board [0 4 1 2 6 3 5])))

  (it "splits an empty board"
    (should= [[" " " " " "] [" " " " " "] [" " " " " "]]
      (split-board [])))

  (it "formats a single row"
    (should= "1   | X | O\n"
      (format-row 1 [" " "X" "O"])))

  (it "formats the rows with the number"
    (should= ["1   |   |  \n" "2   |   |  \n" "3   |   |  \n"]
      (format-rows [])))

  (it "prints the board - empty"
    (should= "  A | B | C\n1   |   |  \n------------\n2   |   |  \n------------\n3   |   |  \n\n"
      (with-out-str (print-board []))))

  (it "prints the board - one move"
    (should= "  A | B | C\n1 X |   |  \n------------\n2   |   |  \n------------\n3   |   |  \n\n"
      (with-out-str (print-board [0]))))

  (it "prints game over"
    (should= "Game Over\n"
      (with-out-str (print-game-over)))))
