(ns tic-tac-toe.human-spec
  (:require [speclj.core :refer :all]
            [tic-tac-toe.human :refer :all]))

(it "gets user input"
    (should= 5
             (with-in-str "B3"
               (choose-space))))

(it "even if it is lower case"
    (should= 0
             (with-in-str "a1"
               (choose-space))))

