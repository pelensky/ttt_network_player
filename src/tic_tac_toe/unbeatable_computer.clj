(ns tic-tac-toe.unbeatable-computer
  (:require [tic-tac-toe.board :as ttt-board]))

(declare negamax)

(defn find-computer-marker [board-state]
  (if ( #(even? (count %)) (get board-state :board))
    "X" "O"))

(defn score-scenarios [board-state depth marker]
  (if (ttt-board/game-tied? board-state)
    0
    (if ( ttt-board/game-won-by? marker board-state)
      (/ 1000 depth)
      (/ -1000 depth))))

(defn best-space-and-score [board-state best-score marker]
 (apply max-key val (reduce conj {} best-score )))

(defn best-space [board-state best-score marker]
  (key (best-space-and-score board-state best-score marker)))

(defn top-score [board-state best-score marker]
  (val (best-space-and-score board-state best-score marker)))

(defn update-best-score [board-state depth color best-score marker]
   (for [space (ttt-board/find-available-spaces board-state)]
     (let [negamax-score (* -1 (negamax (ttt-board/place-marker space board-state) (inc depth) (* -1 color) best-score marker))]
      (assoc best-score space (max -1000 negamax-score) ))))

(defn check-possible-moves [board-state depth color best-score marker]
    (let [updated-best-score (update-best-score board-state depth color best-score marker)]
          ( if (= depth 0)
            (best-space board-state updated-best-score marker)
            (top-score board-state updated-best-score marker))))

(defn negamax [board-state depth color best-score marker]
    (if (ttt-board/game-over? board-state)
      (* color (score-scenarios board-state depth marker))
      (check-possible-moves board-state depth color best-score marker)))

(defn choose-space [board-state]
  (negamax board-state 0  1 (hash-map) (find-computer-marker board-state)))
