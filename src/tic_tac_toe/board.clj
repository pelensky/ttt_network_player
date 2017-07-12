(ns tic-tac-toe.board)

(defn take-turn [space board]
  (conj board space))

(defn check-space [space board]
  (cond
    (not(.contains board space)) nil
    (even? (.indexOf board space)) "X"
    (odd?  (.indexOf board space)) "O"))
