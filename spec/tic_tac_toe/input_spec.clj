(ns tic-tac-toe.input-spec
  (:require [speclj.core :refer :all]
            [tic-tac-toe.input :refer :all]))

(describe "Input"

  (it "gets input"
    (should= "A1"
      (with-in-str "A1"
        (get-input))))

  (it "converts input to integer"
    (should= 0
      (with-in-str "A1"
        (selection))))

  (it "converts different input to integer"
    (should= 4
      (with-in-str "B2"
        (selection))))

  (it "converts lower case input to integer"
    (should= 8
      (with-in-str "c3"
        (selection))))

  (it "strips white space from end"
    (should= 6
      (with-in-str "c1 "
        (selection))))

  (it "strips white space from start"
    (should= 1
      (with-in-str " A2"
        (selection))))

  (it "does not allow nil as a value"
    (should= 5
      (with-in-str "dan \nb3"
        (selection)))))
