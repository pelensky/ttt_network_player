(ns tic-tac-toe.cli)

(defn print-welcome []
  (println "Tic Tac Toe"))

(defn print-board []
  (println (str " A1  | A2  | A3  \n"
                "-----------------\n"
                " B1  | B2  | B3  \n"
                "-----------------\n"
                " C1  | C2  | C3  ")))

(defn print-take-turn [board]
  (println (str (if-let [player (even? (count board))]
    "X" "O") ", take your turn")))
