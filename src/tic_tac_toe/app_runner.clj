(ns tic-tac-toe.app-runner
  (:require [tic-tac-toe.board :as ttt-board]
            [tic-tac-toe.input :as input]
            [tic-tac-toe.output :as output]))

(defn end-of-game [board]
  (output/print-message (output/format-board board))
  (output/print-message (output/game-over board)))

(defn single-turn [board]
  (ttt-board/take-turn (input/selection) board))

(defn game-runner [board]
  (output/print-message (output/take-turn board))
  (output/print-message (output/format-board board))
  (let [updated-board (single-turn board)]
    (if (ttt-board/game-over? updated-board)
      (end-of-game updated-board)
      (recur updated-board))))

(defn play []
  (output/print-message (output/welcome))
  (game-runner []))
