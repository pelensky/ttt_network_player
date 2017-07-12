(ns tic-tac-toe.app-runner
  (:require [tic-tac-toe.board :as ttt-board]
            [tic-tac-toe.input :as ttt-input]
            [tic-tac-toe.output :as ttt-output]))

(declare game-runner)
(declare single-turn)
(declare end-of-game)


(defn game-runner [board]
  (ttt-output/print-take-turn board)
  (ttt-output/print-board board)
  (let [updated-board (ttt-board/take-turn (ttt-input/selection) board)]
    (if (<= 9 (count updated-board))
      (end-of-game updated-board)
      (recur updated-board))))

(defn single-turn [board]
  (ttt-board/take-turn (ttt-input/selection) board))

(defn end-of-game [board]
  (ttt-output/print-board board)
  (ttt-output/print-game-over))

(defn play []
  (ttt-output/print-welcome)
  (game-runner []))
