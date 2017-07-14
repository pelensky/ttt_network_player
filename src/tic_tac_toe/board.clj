(ns tic-tac-toe.board)

(defn take-turn [space board]
  (if (not (.contains board space))
    (conj board space)
    board))

(defn check-value-of-space [space board]
  (cond
    (not(.contains board space)) nil
    (even? (.indexOf board space)) "X"
    (odd?  (.indexOf board space)) "O"))

(defn convert-board [board]
  (vec
    (for [space (range 9)]
      (check-value-of-space space board))))


