(ns tic-tac-toe.input
  (:require [clojure.string :as string]))

(def conversions
  { "A1" 0 "B1" 1 "C1" 2
    "A2" 3 "B2" 4 "C2" 5
    "A3" 6 "B3" 7 "C3" 8})

(defn space-selection []
  (let [converted-selection
    (get conversions
      (string/upper-case
        (string/trim
          (read-line))))]
           (if (not (nil? converted-selection))
            converted-selection
            (recur))))

(defn validate-integer []
  (or (try 
    (Integer/parseInt (read-line))
      (catch Exception e))
        (recur)))

(defn- valid-selection [selection]
  (or (= selection 1) (= selection 2)))

(defn get-number []
  (let [selection 
    (validate-integer)]
      (if (valid-selection selection)
        selection
          (recur))))

