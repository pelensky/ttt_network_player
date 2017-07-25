(ns tic-tac-toe.unbeatable-computer
  (:require [tic-tac-toe.board :as ttt-board]))

(declare minimax)

(defn score-scenarios [board-state depth marker]
  (if (ttt-board/game-tied? board-state)
    0
    (if ( ttt-board/game-won-by? marker board-state)
      (- 10 depth)
      (- -10 depth))))

(defn best-space [best-score]
  (key (apply max-key val (reduce conj {} best-score))))

(defn top-score [best-score]
  (val (apply max-key val (reduce conj {}  best-score))))

(defn update-best-score [board-state depth best-score marker]
   (for [space (ttt-board/find-available-spaces board-state)]
      (assoc best-score space (minimax (ttt-board/place-marker space board-state) (inc depth) best-score marker) )))

(defn check-possible-moves [board-state depth best-score marker]
    (let [updated-best-score (update-best-score board-state depth best-score marker)]
          ( if (= depth 0)
            (best-space updated-best-score)
            (top-score updated-best-score))))

(defn minimax [board-state depth best-score marker]
    (if ( ttt-board/game-over? board-state)
      (score-scenarios board-state depth marker)
      (check-possible-moves board-state depth best-score marker)))

(defn find-computer-marker [board-state]
  (if ( #(even? ( count %)) (get board-state :board))
    "X"
    "O"))

(defn choose-space [board-state]
  (minimax board-state 0 (hash-map) (find-computer-marker board-state)))
