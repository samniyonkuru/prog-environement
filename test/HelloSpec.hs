module Main where

import Test.Hspec
import Hello (hello)

main :: IO ()
main = hspec $ do
  describe "hello" $ do
    it "greets the user properly" $ do
      hello "Sam" `shouldBe` "Hello, Sam!"
