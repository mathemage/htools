-- module with tools for prime numbers
module Maths.NumberTheory.Primes
( primes,
  factorize
) where

-- list of prime numbers generated by the Sieve of Eratosthenes
primes :: [Int]
primes = sieve $ 2:[3,5..]
         where sieve (p:ns) = p : sieve [n | n <- ns, n `mod` p /= 0]

-- factorize integer
-- return list of prime factors (with multiplicities)
factorize :: Int -> [Int]
factorize n = factorize' n primes
              where factorize' n (d:ds)
                      | n == 1         = []
                      | n `mod` d /= 0 = factorize' n ds
                      | otherwise      = d : factorize' (n `div` d) (d:ds)
