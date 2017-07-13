(ns tic-tac-toe.input
  (:require [clojure.string :as string]))


(def conversions
  { "A1" 0 "A2" 1 "A3" 2
    "B1" 3 "B2" 4 "B3" 5
    "C1" 6 "C2" 7 "C3" 8})

(defn get-input []
  (read-line))

(defn selection []
  (let [converted-selection (get conversions
    (string/upper-case
      (string/trim
        (read-line))))]
          (if (not (nil? converted-selection))
            converted-selection
            (recur))))
