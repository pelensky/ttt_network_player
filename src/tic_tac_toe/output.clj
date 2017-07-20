(ns tic-tac-toe.output
  (:require [tic-tac-toe.board :as ttt-board]))

(defn welcome []
  "Tic Tac Toe")

(defn take-turn [board]
  (str (if (even? (count board)) "X" "O") ", take your turn"))

(defn- update-space [value]
  (if (nil? value)
    " "
    value))

(defn- replace-nil-values-with-spaces [board]
  (let [full-board (ttt-board/convert-board-to-full-board board)]
    (for [space full-board]
      (update-space space))))

(defn- format-row [number row]
  (str number " " (clojure.string/join " | " row) "\n"))

(defn- format-rows [board]
  (let [split (map-indexed vector (ttt-board/split-board-into-rows (replace-nil-values-with-spaces board)))]
    (for [row split]
      (format-row (inc (get row 0)) (get row 1)))))

(defn format-board [board]
  (let [formatted (format-rows board)]
    (str "  A | B | C\n"
      (clojure.string/join "------------\n" formatted))))

(defn- tied-game []
  "Game Tied")

(defn- won-game [board]
  (str
    (if (ttt-board/game-won-by? "X" board ) "X" "O") " is the winner"))

(defn play-again []
  "Play again?\n1) Yes\n2) No")

(defn game-over [board]
  (str "Game Over\n"
    (if (ttt-board/game-tied? board)
      (tied-game)
      (won-game board))))

(defn player-type [marker]
  (str "Select player type for " marker "\n" "1) Human\n" "2) Random Computer"))

(defn exiting []
  "Exiting")

(defn print-message [message]
  (println message))
