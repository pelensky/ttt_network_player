(ns computer
  (:gen-class
    :methods [^:static [handler [String] Long]]) )

(defn- choose-space [board-state]
  (println   (get board-state :board))
  (println board-state)
  7)

(defn -handler [board-state-string]
  (let [board-state (read-string board-state-string)]
    (choose-space board-state)))
