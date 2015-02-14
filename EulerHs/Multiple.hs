module EulerHs.Multiple
  (sum) where

import Prelude hiding (sum)
import qualified Prelude as P

sum :: Int -> Int
sum a = P.sum [ x | x <- [1..a], x `mod` 3 == 0 || x `mod` 5 == 0 ]
