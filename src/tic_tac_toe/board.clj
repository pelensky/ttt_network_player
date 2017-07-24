(ns tic-tac-toe.board)

(def number-of-rows 3)

(defn place-marker [space board]
  (if (not (.contains board space))
    (conj board space)
    board))

(defn check-value-of-space [space board]
  (cond
    (not(.contains board space)) nil
    (even? (.indexOf board space)) "X"
    (odd?  (.indexOf board space)) "O"))

(defn convert-board-to-full-board [board]
  (vec
    (for [space (range (* number-of-rows number-of-rows))]
      (check-value-of-space space board))))

(defn split-board-into-rows [full-board]
  (vec
    ( for [row (partition number-of-rows full-board)]
      (vec row))))

(defn- split-board-into-columns [rows]
  (apply mapv vector rows))

(defn- split-left-diagonal [rows accumulator current-index]
  (if (>= current-index (count rows))
    (conj [] accumulator)
    (recur rows
           (conj accumulator (get ( get rows current-index) current-index))
           (inc current-index))))

(defn- split-right-diagonal [rows accumulator current-row-index current-column-index]
  (if (>= current-row-index (count rows))
    (conj [] accumulator)
    (recur rows
           (conj accumulator (get (get rows current-row-index) current-column-index))
           (inc current-row-index)
           (dec current-column-index))))

(defn winning-scenarios [board]
  (let [full-board (convert-board-to-full-board board)
        rows (split-board-into-rows full-board)
        columns (split-board-into-columns rows)
        left-diagonal (split-left-diagonal rows [] 0)
        right-diagonal (split-right-diagonal rows [] 0 (- number-of-rows 1)) ]
    (into [] (concat rows columns left-diagonal right-diagonal))))

(defn line-won-by? [marker line]
  (every? (partial = marker) line))

(defn game-won-by? [marker board]
  (some?
    (some true?
          (for [line (winning-scenarios board)]
            (line-won-by? marker line)))))

(defn game-tied? [board]
  (and (= (* number-of-rows number-of-rows) (count board)) (not (game-won-by? "X" board)) (not (game-won-by? "O" board))))

(defn game-over? [board]
  (or (game-won-by? "X" board) (game-won-by? "O" board) (game-tied? board)))

(defn rows []
  (map (fn [row-start] (range row-start (+ row-start number-of-rows)))
        (map (fn [first-row] (* first-row number-of-rows)) (range number-of-rows))))

(defn columns []
  (map (fn [starting-index] (range starting-index (* number-of-rows number-of-rows) number-of-rows))
        (range number-of-rows)))

(defn left-diagonal []
  (range 0 (* number-of-rows number-of-rows) (inc number-of-rows)))

(defn right-diagonal []
  (range (dec number-of-rows) (dec (* number-of-rows number-of-rows)) (dec number-of-rows)))

(defn diagonals []
  [(left-diagonal) (right-diagonal)])

(defn winning-positions []
  (into [] (concat (rows) (columns) (diagonals) )))
