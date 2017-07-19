(ns tic-tac-toe.random-computer)

(defn- check-if-spaces-are-available [board]
  (for [space (range 9)]
    (if
      (not (some (partial = space) board)) 
      space)))

(defn get-available-spaces [board]
  (remove nil? 
    (vec (check-if-spaces-are-available board) )))

(defn choose-space [board]
  (rand-nth (get-available-spaces board)))


