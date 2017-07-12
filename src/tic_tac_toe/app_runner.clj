(ns tic-tac-toe.app-runner
  (:require [tic-tac-toe.board :as ttt-board]
            [tic-tac-toe.input :as ttt-input]
            [tic-tac-toe.output :as ttt-output]))

(defn game-runner [board]
  (ttt-output/print-take-turn board)
)

(defn play []
  (ttt-output/print-welcome)
  (game-runner [])
  (ttt-output/print-game-over))
