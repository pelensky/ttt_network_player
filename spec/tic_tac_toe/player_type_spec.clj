(ns tic-tac-toe.player-type-spec
  (:require [speclj.core :refer :all]
            [tic-tac-toe.player-type :refer :all]))

(describe "Player types"

  (it "selects a player type for X"
    (should= :human
      (select-player 1))))
