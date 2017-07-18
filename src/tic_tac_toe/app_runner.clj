(ns tic-tac-toe.app-runner
  (:require [tic-tac-toe.board :as ttt-board]
            [tic-tac-toe.player-type :as player-type]
            [tic-tac-toe.human :as human]
            [tic-tac-toe.input :as input]
            [tic-tac-toe.output :as output]))

(defn current-player [board players]
  (if (even? (count board))
    (get players 0)
    (get players 1)))

(defn end-of-game [board]
  (output/print-message (output/format-board board))
  (output/print-message (output/game-over board)))

(defn single-turn [board players]
  (let [player (current-player board players)]
    (if (= player :human)
      (ttt-board/take-turn (human/choose-space) board))))

(defn game-runner [board players]
  (output/print-message (output/take-turn board))
  (output/print-message (output/format-board board))
  (let [updated-board (single-turn board players)]
    (if (ttt-board/game-over? updated-board)
      (end-of-game updated-board)
      (recur updated-board players))))

(defn select-players [players]
  (output/print-message (output/player-type (if (empty? players) "X" "O")))
  (let [updated-players (player-type/select-players players (player-type/select-player (input/get-player)))]
    (if (= 2 (count updated-players ))
      (game-runner [] updated-players)
      (recur updated-players))))

(defn play []
  (output/print-message (output/welcome))
  (select-players []))
