(ns tic-tac-toe.player-type)

(def human 1)

(defn select-player [option]
  (if (= human option)
    :human
    :random-computer))

(defn select-players [players current-player]
  (conj players current-player))
