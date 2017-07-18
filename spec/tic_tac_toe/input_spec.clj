(ns tic-tac-toe.input-spec
  (:require [speclj.core :refer :all]
            [tic-tac-toe.input :refer :all]))

(describe "Input"

  (it "gets one or two"
    (should= 1
      (with-in-str "1"
        (get-player))))

  (it "converts input to integer"
    (should= 0
      (with-in-str "A1"
        (space-selection))))

  (it "converts different input to integer"
    (should= 4
      (with-in-str "B2"
        (space-selection))))

  (it "converts lower case input to integer"
    (should= 8
      (with-in-str "c3"
        (space-selection))))

  (it "strips white space from end"
    (should= 2
      (with-in-str "c1 "
        (space-selection))))

  (it "strips white space from start"
    (should= 3
      (with-in-str " A2"
        (space-selection))))

  (it "does not allow nil as a value"
    (should= 7
      (with-in-str "dan \nb3"
        (space-selection)))))
