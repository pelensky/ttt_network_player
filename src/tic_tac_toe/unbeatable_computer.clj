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

(defn update-best-score [board-state depth color marker]
   (for [space (ttt-board/find-available-spaces board-state)]
     (let [negamax-score (* -1 (negamax (ttt-board/place-marker space board-state) (inc depth) (* -1 color)  marker))]
      { space (max -1000 negamax-score)} )))

(defn negamax [board-state depth color marker]
    (if (ttt-board/game-over? board-state)
      (* color (score-scenarios board-state depth marker))
      (do
        (let [scores (update-best-score board-state depth color marker)]
          (if (= depth 0)
            (best-space board-state scores marker)
            (top-score board-state scores marker))))))

(defn choose-space [board-state]
  (negamax board-state 0  1 (find-computer-marker board-state)))
