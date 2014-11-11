-- module with miscelleanous functions
module Maths.NumberTheory.Misc
( reverseNumber,
  isPalindrom,
  isPythagoreanTriplet
) where

-- reverse digits of number
reverseNumber :: Int -> Int
reverseNumber n
  | n < 0     = -reverseNumber (-n)
  | otherwise = read . reverse . show $ n :: Int

isPalindrom :: Int -> Bool
isPalindrom n = n == reverseNumber n

isPythagoreanTriplet :: Int -> Int -> Int -> Bool
isPythagoreanTriplet a b c = a*a + b*b == c*c
