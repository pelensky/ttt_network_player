(ns computer
  (:gen-class
    :methods [^:static [handler [String] Long]]) )

(defn -handler [board-state-string]
  (let [board-state (read-string board-state-string)]
  (println board-state)
  7))
