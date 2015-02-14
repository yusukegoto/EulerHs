{-
If we list all the natural numbers below 10 that are multiples of 3 or 5,
we get 3, 5, 6 and 9.
The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
-}
module MultiTest(tests) where

import Test.Framework.Providers.HUnit
import Test.HUnit

import qualified EulerHs.Multiple as Multiple -- 実装対象

expects9 = Multiple.sum 9
till9 = testCase "3または5の倍数の和" $
          assertEqual "9まで" expects9 23

expects999 = Multiple.sum 999
till999 = testCase "3または5の倍数の和" $
            assertEqual "999まで" expects999 233168

tests = [ till9
        , till999
        ]
