import Test.Framework (defaultMain)

import MultiTest
import EvenFiboTest
import LargestPrimeFactorTest

main = defaultMain cases

cases = foldl1 (++) $
         [ MultiTest.tests
         , EvenFiboTest.tests
         , LargestPrimeFactorTest.tests
         ]
