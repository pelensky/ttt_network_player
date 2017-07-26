(ns tic-tac-toe.unbeatable-computer
  (:require [tic-tac-toe.board :as ttt-board]))

(declare negamax)
(def starting-depth 0)
(def starting-colour 1)

(defn find-computer-marker [board-state]
  (if ( #(even? (count %)) (get board-state :board))
    "X" "O"))

(defn score-scenarios [board-state depth marker]
  (if (ttt-board/game-tied? board-state)
    0
    (if ( ttt-board/game-won-by? marker board-state)
      (/ 1000 depth)
      (/ -1000 depth))))

(defn find-highest-value [board-state scores]
 (apply max-key val scores))

(defn best-space [board-state scores]
  (key (find-highest-value board-state scores)))

(defn top-score [board-state scores]
  (val (find-highest-value board-state scores)))

(defn score-spaces [board-state depth colour marker]
   (let [available-spaces (ttt-board/find-available-spaces board-state)
        negamax-score (map #(- (negamax (ttt-board/place-marker % board-state) (inc depth) (- colour)  marker)) available-spaces)]
          (zipmap available-spaces negamax-score)))

(defn negamax [board-state depth colour marker]
    (if (ttt-board/game-over? board-state)
      (* colour (score-scenarios board-state depth marker))
      (do
        (let [scores (score-spaces board-state depth colour marker)]
          (if (= depth starting-depth)
            (best-space board-state scores)
            (top-score board-state scores))))))

(defn choose-space [board-state]
  (negamax board-state starting-depth starting-colour (find-computer-marker board-state)))
