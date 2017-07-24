(ns tic-tac-toe.app-runner
  (:require [tic-tac-toe.board :as ttt-board]
            [tic-tac-toe.player-type :as player-type]
            [tic-tac-toe.human :as human]
            [tic-tac-toe.random-computer :as random-computer]
            [tic-tac-toe.input :as input]
            [tic-tac-toe.output :as output]))

(def play-again-selection 1)

(def player-x 0)

(def player-o 1)

(def max-players 2)

(declare play)

(defn play-again [selection]
  (if (= selection play-again-selection)
    (play)
    (output/print-message (output/exiting))))

(defn end-of-game [board-state]
  (output/print-message (output/format-board board-state))
  (output/print-message (output/game-over board-state))
  (output/print-message (output/play-again))
  (play-again (input/get-number)))

(defn current-player [board-state players]
  (let [board (ttt-board/get-board board-state)]
    (if (even? (count board))
      (get players player-x)
      (get players player-o))))

(defn single-turn [board-state players]
  (let [player (current-player board-state players)
        board (ttt-board/get-board board-state)]
    (if (= player :human)
      (ttt-board/place-marker (human/choose-space) board-state)
      (ttt-board/place-marker (random-computer/choose-space board) board-state))))

(defn game-runner [board-state players]
  (output/print-message (output/take-turn board-state))
  (output/print-message (output/format-board board-state))
  (let [updated-board (single-turn board-state players)]
    (if (ttt-board/game-over? updated-board)
      (end-of-game updated-board)
      (recur updated-board players))))

(defn select-players [players]
  (output/print-message (output/player-type (if (empty? players) "X" "O")))
  (let [updated-players (player-type/select-players players (player-type/select-player (input/get-number)))]
    (if (= max-players (count updated-players ))
      (game-runner {:size 3 :board []} updated-players)
      (recur updated-players))))

(defn play []
  (output/print-message (output/welcome))
  (select-players []))
