import Data.Void (vacuous)
import GHC.Base (BCO)

-- b

esPositivo :: Int -> Bool
esPositivo n = n > 0

-- c

esVocal :: Char -> Bool
esVocal x = (x == 'a') || (x == 'e') || (x == 'i') || (x == 'o') || (x == 'u')

-- d

valorAbsoluto :: Int -> Int
valorAbsoluto x
  | x >= 0 = x
  | x < 0 = x * (-1)

-- 2A
paratodo :: [Bool] -> Bool
paratodo [] = True
paratodo (x : xs)
  | x == True = paratodo xs
  | x == False = False

sumatoria :: [Int] -> Int
sumatoria [] = 0
sumatoria (x : xs) = x + sumatoria xs

-- 2c

productoria :: [Int] -> Int
productoria [] = 1
productoria (x : xs) = x * (productoria xs)

-- 2d

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * (factorial (n - 1))

-- 2e
promedio :: [Int] -> Int
promedio [] = 0
promedio xs = div (sumatoria xs) (length xs)

-- 3
pertenece :: Int -> [Int] -> Bool
pertenece n [] = False
pertenece n (x : xs)
  | n == x = True
  | n /= x = pertenece n xs
