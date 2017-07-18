(ns tic-tac-toe.app-runner
  (:require [tic-tac-toe.board :as ttt-board]
            [tic-tac-toe.input :as ttt-input]
            [tic-tac-toe.output :as ttt-output]))

(defn end-of-game [board]
  (ttt-output/print-message (ttt-output/format-board board))
  (ttt-output/print-game-over board))

(defn single-turn [board]
  (ttt-board/take-turn (ttt-input/selection) board))

(defn game-runner [board]
  (ttt-output/print-message (ttt-output/take-turn board))
  (ttt-output/print-message (ttt-output/format-board board))
  (let [updated-board (single-turn board)]
    (if (ttt-board/game-over? updated-board)
      (end-of-game updated-board)
      (recur updated-board))))

(defn play []
  (ttt-output/print-message (ttt-output/welcome))
  (game-runner []))
