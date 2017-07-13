(ns tic-tac-toe.output-spec
  (:require [speclj.core :refer :all]
            [tic-tac-toe.output :refer :all]))

(describe "Output"
  (it "Welcomes user"
    (should= "Tic Tac Toe\n"
      (with-out-str (print-welcome))))

  (it "prompts X to take turn"
    (should= "X, take your turn\n"
      (with-out-str (print-take-turn [] ))))

  (it "prompts O to take their turn"
    (should= "O, take your turn\n"
      (with-out-str (print-take-turn [0] ))))

  (it "creates a vector with moves - one"
    (should= ["X" nil nil nil nil nil nil nil nil]
      (convert-board [0])))

  (it "creates a vector with moves - multiple"
    (should= ["X" "X" "O" "O" "O" "X" "X" nil nil]
      (convert-board [0 4 1 2 6 3 5])))

  (it "changes nil to space"
    (should= " "
      (update-space nil)))

  (it "doesn't change non-nil"
    (should= "X"
      (update-space "X")))

  (it "creates a vector with spaces rather than nil"
    (should= ["X" "X" "O" "O" "O" "X" "X" " " " "]
      (formatted-board-vector [0 4 1 2 6 3 5])))

  (it "creates a vector with spaces - no moves"
    (should= [" " " " " " " " " " " " " " " " " "]
      (formatted-board-vector [])))

  (it "splits the vector into three"
    (should= [["X" "X" "O"] ["O" "O" "X"] ["X" " " " "]]
      (split-board [0 4 1 2 6 3 5])))

  (it "splits an empty board into three"
    (should= [[" " " " " "] [" " " " " "] [" " " " " "]]
      (split-board [])))

  (it "formats a row"
    (should= "1   | X | O\n"
      (format-row 1 [" " "X" "O"])))

  (it "formats the rows with the row number"
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
