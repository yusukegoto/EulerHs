{-
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
-}
module LargestPrimeFactorTest(tests) where

import Test.Framework.Providers.HUnit
import Test.HUnit

import qualified EulerHs.LargestPrimeFactor as L -- 実装対象

tests = [ factorOf13195
        -- , factorOf600851475143 -- 遅すぎてテストにいれれない
        ]

factorOf13195 = testCase "The largest prime factors of 13195" $
                  assertEqual "29" expected actual
                    where
                      expected = 29
                      actual = L.largestPrime 13195

factorOf600851475143 = testCase "The largest prime factors of 13195" $
                  assertEqual "6857" expected actual
                    where
                      expected = 6857
                      actual = L.largestPrime 600851475143
