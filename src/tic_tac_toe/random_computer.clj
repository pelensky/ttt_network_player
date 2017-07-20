(ns tic-tac-toe.random-computer)

(def number-of-rows 3)

(defn- check-if-spaces-are-available [board]
  (for [space (range (* number-of-rows number-of-rows))]
    (if
      (not (some (partial = space) board)) 
      space)))

(defn get-available-spaces [board]
  (remove nil? 
    (vec (check-if-spaces-are-available board) )))

(defn choose-space [board]
  (rand-nth (get-available-spaces board)))


