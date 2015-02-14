import Test.Framework (defaultMain)

import MultiTest
import EvenFiboTest

main = defaultMain cases

cases = foldl1 (++) $
         [ MultiTest.tests
         , EvenFiboTest.tests
         ]
