(ns tic-tac-toe.random-computer)

(defn get-available-spaces [board]
  (remove nil? (vec
    (for [space (range 9)]
      (if (not (some (partial = space) board)) space)))))

(defn choose-space [board]
  (rand-nth (get-available-spaces board)))


