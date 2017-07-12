(ns tic-tac-toe.cli
  (:require [tic-tac-toe.board :as ttt-board]))

(defn print-welcome []
  (println "Tic Tac Toe"))

(defn convert-board [board]
  (vec
    (for [space (range 9)]
      (ttt-board/check-space space board))))

(defn print-board [board]
  (println (str "  A | B | C \n"
                "1   |   |   \n"
                "------------\n"
                "2   |   |   \n"
                "------------\n"
                "3   |   |   ")))

(defn print-take-turn [board]
  (println (str (if-let [player (even? (count board))]
    "X" "O") ", take your turn")))
