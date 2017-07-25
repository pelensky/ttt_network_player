(ns tic-tac-toe.random-computer
  (:require [tic-tac-toe.board :as ttt-board]))

(defn- check-if-spaces-are-available [board size]
  (for [space (range (* size size))]
    (if
      (not (some (partial = space) board))
      space)))

(defn get-available-spaces [board size]
  (remove nil?
          (vec (check-if-spaces-are-available board size) )))

(defn choose-space [board-state]
  (let [board (ttt-board/get-board board-state)
        size (ttt-board/get-size board-state)]
  (rand-nth (get-available-spaces board size))))


