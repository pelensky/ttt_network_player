(ns tic-tac-toe.random-computer)

(defn- check-for-available-spaces [board]
  (for [space (range 9)]
    (if
      (not (some (partial = space) board)) 
      space)))

(defn get-available-spaces [board]
  (remove nil? 
    (vec (check-for-available-spaces board) )))

(defn choose-space [board]
  (rand-nth (get-available-spaces board)))


