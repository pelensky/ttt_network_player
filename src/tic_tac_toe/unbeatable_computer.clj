(ns tic-tac-toe.unbeatable-computer
  (:require [tic-tac-toe.board :as ttt-board]))

(declare minimax)

(defn find-computer-marker [board-state]
  (if ( #(even? (count %)) (get board-state :board))
    "X" "O"))

(defn score-scenarios [board-state depth marker]
  (if (ttt-board/game-tied? board-state)
    0
    (if ( ttt-board/game-won-by? marker board-state)
      (- 10 depth)
      (- depth 10))))

(defn best-space-and-score [board-state best-score marker]
  (if (= marker (find-computer-marker board-state))
    (apply max-key val (reduce conj {} best-score ))
    (apply min-key val (reduce conj {} best-score ))))

(defn best-space [board-state best-score marker]
  (println best-score)
  (key (best-space-and-score board-state best-score marker)))

(defn top-score [board-state best-score marker]
  (val (best-space-and-score board-state best-score marker)))

(defn update-best-score [board-state depth best-score marker]
   (for [space (ttt-board/find-available-spaces board-state)]
      (assoc best-score space (minimax (ttt-board/place-marker space board-state) (inc depth) best-score marker) )))

(defn check-possible-moves [board-state depth best-score marker]
    (let [updated-best-score (update-best-score board-state depth best-score marker)]
          ( if (= depth 0)
            (best-space board-state updated-best-score marker)
            (top-score board-state updated-best-score marker))))

(defn minimax [board-state depth best-score marker]
    (if (ttt-board/game-over? board-state)
      (score-scenarios board-state depth marker)
      (check-possible-moves board-state depth best-score marker)))

(defn choose-space [board-state]
  (minimax board-state 0 (hash-map) (find-computer-marker board-state)))
