(ns tic-tac-toe.cli
  (:require [tic-tac-toe.board :as ttt-board]))

(defn print-welcome []
  (println "Tic Tac Toe"))

(defn print-take-turn [board]
  (println
    (str
      (if (even? (count board))
        "X" "O") ", take your turn")))

(defn convert-board [board]
  (vec
    (for [space (range 9)]
      (ttt-board/check-space space board))))

(defn update-space [value]
  (if (nil? value)
    " "
    value))

(defn formatted-board-vector [board]
  (let [full-board (convert-board board)]
    (for [space full-board]
      (update-space space))))

(defn split-board [board]
  (let [full-board (formatted-board-vector board)]
    (vec (partition 3 full-board))))

(defn format-row [number row]
  (str number " " (clojure.string/join " | " row) "\n"))

(defn format-rows [board]
  (let [split (map-indexed vector (split-board board))]
    (for [row split]
      (format-row (inc (get row 0)) (get row 1)))))

(defn print-board [board]
  (let [formatted (format-rows board)]
    (println (str "  A | B | C\n"
      (clojure.string/join "------------\n" formatted)))))

(defn print-empty-board [board]
  (println (str "  A | B | C \n"
                "1   |   |   \n"
                "------------\n"
                "2   |   |   \n"
                "------------\n"
                "3   |   |   ")))
