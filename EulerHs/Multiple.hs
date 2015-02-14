module EulerHs.Multiple
  (sum') where

sum' :: Int -> Int
sum' a = Prelude.sum [ x | x <- [1..a], x `mod` 3 == 0 || x `mod` 5 == 0 ]
