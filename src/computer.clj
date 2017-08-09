(ns computer
  (:gen-class
    :methods [^:static [handler [String] Long]]) )

(defn -handler [s]
  (str "Hello " s "!")
  7)
