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

(defn find-highest-value [board-state scores marker]
 (apply max-key val scores))

(defn best-space [board-state scores marker]
  (key (find-highest-value board-state scores marker)))

(defn top-score [board-state scores marker]
  (val (find-highest-value board-state scores marker)))

(defn score-spaces [board-state depth color marker]
   (let [available-spaces (ttt-board/find-available-spaces board-state)
        negamax-score (map #(- (negamax (ttt-board/place-marker % board-state) (inc depth) (* -1 color)  marker)) available-spaces)]
          (zipmap available-spaces negamax-score)))

(defn negamax [board-state depth color marker]
    (if (ttt-board/game-over? board-state)
      (* color (score-scenarios board-state depth marker))
      (do
        (let [scores (score-spaces board-state depth color marker)]
          (if (= depth 0)
            (best-space board-state scores marker)
            (top-score board-state scores marker))))))

(defn choose-space [board-state]
  (negamax board-state 0  1 (find-computer-marker board-state)))
