(ns tic-tac-toe.random-computer
  (:require [tic-tac-toe.board :as ttt-board]))

(defn choose-space [board-state]
  (rand-nth (ttt-board/find-available-spaces board-state)) )


