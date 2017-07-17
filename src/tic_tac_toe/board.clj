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

(defn split-board-into-rows [full-board]
  (vec
    ( for [row (partition 3 full-board)]
      (vec row))))

(defn- split-board-into-columns [rows]
  (apply mapv vector rows))

(defn split-left-diagonal [rows accumulator current-index]
  (if (>= current-index (count rows))
    accumulator
    (recur rows
      (conj accumulator (get ( get rows current-index) current-index))
      (inc current-index))))

(defn winning-scenarios [board]
    (let [full-board (convert-board board)]
      (let [rows (split-board-into-rows full-board)]
        (let [columns (split-board-into-columns rows)]
          (let [left-diagonal (split-left-diagonal rows [] 0)]
            (conj [] rows columns left-diagonal))))))
