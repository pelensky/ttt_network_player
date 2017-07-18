(ns tic-tac-toe.player-type)

(defn select-player [option]
  :human)

(defn select-players [players current-player]
  (conj players current-player))
