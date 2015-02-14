{-
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
-}
module EulerHs.LargestPrimeFactor
  ( largestPrime
  ) where

import Data.List

oddsBelowHalf :: Integer -> [Integer]
oddsBelowHalf a = [3,5..(a `div` 2)]

isPrime :: Integer -> Bool
isPrime a
  | even a = False
  | otherwise = not $ any (\x -> a `mod` x == 0) $ oddsBelowHalf a

largestPrime :: Integer -> Integer
largestPrime a
  | a <  2 = error "Argument must be 2 or larger Integer"
  | a == 2 = 2
  | even a = largestPrime $ a `div` 2
  | isPrime a = a
  | otherwise =
      maximum $ filter (\x -> a `mod` x == 0 && isPrime x) $ oddsBelowHalf a

