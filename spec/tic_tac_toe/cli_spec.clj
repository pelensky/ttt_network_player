(ns tic-tac-toe.cli-spec
  (:require [speclj.core :refer :all]
            [tic-tac-toe.cli :refer :all]))

(describe "CLI"
  (it "Welcomes the user"
    (should= "Tic Tac Toe\n"
      (with-out-str (welcome)))))
