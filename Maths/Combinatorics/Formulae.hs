-- module with tools for combinatoric formulae
module Maths.Combinatorics.Sums
( sumOfSquares,
  squarePyramid
) where

-- the sum of squares of a finite list of numbers
sumOfSquares :: Num a => [a] -> a
sumOfSquares xs = sum [x^2 | x <- xs]

-- the n'th square pyramidal number
-- see http://en.wikipedia.org/wiki/Square_pyramidal_number
squarePyramid :: Int -> Int
squarePyramid n = (2*n^3 + 3*n^2 + n) `div` 6     -- '/' would require Fractional Int
