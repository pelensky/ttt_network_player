(ns tic-tac-toe.player-type-spec
  (:require [speclj.core :refer :all]
            [tic-tac-toe.player-type :refer :all]))

(describe "Player types"

          (it "selects a player type for X"
              (should= :human
                       (select-player 1)))

          (it "selects random-computer"
              (should= :random-computer
                       (select-player 2)))

          (it "selects unbeatable-computer"
              (should= :unbeatable-computer
                       (select-player 3)))

          (it "puts the first player into a vector"
              (should= [:human]
                       (select-players [] :human)))

          (it "puts the second player into the vector"
              (should= [:human :random-computer]
                       (select-players [:human] :random-computer))))
