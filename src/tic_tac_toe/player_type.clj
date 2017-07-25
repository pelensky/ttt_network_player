(ns tic-tac-toe.player-type)

(defn select-player [option]
  (case option
    1 :human
    2 :random-computer
    3 :unbeatable-computer))


(defn select-players [players current-player]
  (conj players current-player))
