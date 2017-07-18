(ns tic-tac-toe.output
  (:require [tic-tac-toe.board :as ttt-board]))

(defn welcome []
  "Tic Tac Toe")

(defn print-take-turn [board]
  (println
    (str (if (even? (count board)) "X" "O") ", take your turn")))

(defn- update-space [value]
  (if (nil? value)
    " "
    value))

(defn- replace-nil-values-with-spaces [board]
  (let [full-board (ttt-board/convert-board board)]
    (for [space full-board]
      (update-space space))))

(defn- format-row [number row]
  (str number " " (clojure.string/join " | " row) "\n"))

(defn- format-rows [board]
  (let [split (map-indexed vector (ttt-board/split-board-into-rows (replace-nil-values-with-spaces board)))]
    (for [row split]
      (format-row (inc (get row 0)) (get row 1)))))

(defn print-board [board]
  (let [formatted (format-rows board)]
    (println (str "  A | B | C\n"
      (clojure.string/join "------------\n" formatted)))))

(defn- print-tied-game []
  (println "Game Tied"))

(defn- print-won-game [board]
  (println
    (str (if (ttt-board/game-won-by? "X" board ) "X" "O") " is the winner")))

(defn print-game-over [board]
  (println "Game Over")
    (if (ttt-board/game-tied? board)
      (print-tied-game)
      (print-won-game board)))

(defn print-message [message]
  (println message))
