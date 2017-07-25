(ns tic-tac-toe.unbeatable-computer
  (:require [tic-tac-toe.board :as ttt-board]))

( defn minimax [board-state depth best-score marker]
   7 )

(defn find-computer-marker [board-state]
  (if ( #(even? ( count %)) (get board-state :board))
    "X"
    "O"))

(defn choose-space [board-state]
  (minimax board-state 0 {} (find-computer-marker board-state)))
