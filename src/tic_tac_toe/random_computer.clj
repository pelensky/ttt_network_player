(ns tic-tac-toe.random-computer
  (:require [tic-tac-toe.board :as ttt-board]))

(def number-of-rows 3)

(defn- check-if-spaces-are-available [board]
  (for [space (range (* number-of-rows number-of-rows))]
    (if
      (not (some (partial = space) board))
      space)))

(defn get-available-spaces [board]
  (remove nil?
          (vec (check-if-spaces-are-available board) )))

(defn choose-space [board-state]
  (let [board (ttt-board/get-board board-state)]
  (rand-nth (get-available-spaces board))))


