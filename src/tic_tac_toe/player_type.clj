(ns tic-tac-toe.player-type)

(defn select-player [option]
  (if (= 1 option)
    :human
    :random-computer))

(defn select-players [players current-player]
  (conj players current-player))
