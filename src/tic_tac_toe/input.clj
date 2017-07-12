(ns tic-tac-toe.input)

(defn get-input []
  (read-line))

(defn selection []
  (Integer/valueOf (read-line)))
