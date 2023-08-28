-- Maria Luz Varas

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

-- 4 a


paratodo' :: [a] -> (a -> Bool) -> Bool
paratodo' [] t = True
paratodo' (x : xs) t
  | t x == True = paratodo' xs t
  | otherwise = False


-- 4b


existe' :: [a] -> (a -> Bool) -> Bool
existe' [] t = False
existe' (x : xs) t
  | t x == False = existe' xs t
  | otherwise = True


-- 4c


sumatoria' :: [a] -> (a -> Int) -> Int
sumatoria' [] t = 0
sumatoria'(x:xs) t = t x+ sumatoria' xs t 

--4d

productoria' :: [a] -> (a -> Int) -> Int
productoria' [] t = 1
productoria' (x:xs) t = t x * productoria' xs t

--5

paratodoRE:: [Bool] -> Bool
paratodoRE xs = paratodo' xs id

--Necesito el 'id' para poder mantener el bool de paratodo'.
-- Se lee como una funcion, es el segundo valor que espera paratodo'.
--Ejemplo:
--paratodoRE [True, True, True, False]
--False
--paratodoRE [True, True, True]
--True

--6a

esPar:: Int -> Bool
esPar x = mod x 2 == 0

todosPares :: [Int] -> Bool
todosPares (x:xs) = paratodo' (x:xs) (esPar)

--Ejemplos:  
--todosPares [1] 
--False
--todosPares[2,4,10]
--True

--6b
esMul:: Int -> Int -> Bool
esMul y x = mod x y == 0

hayMultiplo :: Int -> [Int] -> Bool
hayMultiplo y [] = False
hayMultiplo y (x:xs) = existe' (x:xs) (esMul y)

--Ejemplos:
--hayMultiplo 3 []
--False
--hayMultiplo 4 [2, 6, 16]
--True

--6c
cuad :: Int -> Int
cuad n = n*n
sumaCuadrados :: Int -> Int
sumaCuadrados n = sumatoria' [0..(n-1)] (cuad)

--Ejemplos:
--sumaCuadrados 4
--14
--sumaCuadrados 0
--0

--6d
esDiv:: Int -> Int -> Bool
esDiv y x = mod y x == 0
existeDivisor :: Int -> [Int] -> Bool
existeDivisor n [] = False
existeDivisor n (x:xs) = existe' (x:xs) (esDiv n)

--Ejemplos:
--ghci> existeDivisor 3 [2,4]
--False
--ghci> existeDivisor 3 [2,4,9]
--True

--6e

esPrimo :: Int -> Bool
esPrimo x = not(existeDivisor x [2..x-1])

--aplico el 'not' para invertir los valores de verdad del resultado de 
--aplicar existeDivisor.
--Ejemplos:
-- ghci> esPrimo 10
--False
--ghci> esPrimo 17
--True
--ghci> esPrimo 2 
--True

--6f

factorial2:: Int ->Int
factorial2 n= product ([1..n])
--Ejemplos
--factorial 4
--24
--factorial 20
--2432902008176640000

--6g 
esPrimo1 :: Int -> Int
esPrimo1 x | esPrimo x = x
           | otherwise = 1

multiplicaPrimos :: [Int] -> Int
multiplicaPrimos (x:xs) = productoria' (x:xs) (esPrimo1)

--Ejemplos:
--multiplicaPrimos [1,2,3,4,5]
--30
-- multiplicaPrimos [1,4,6]    
--1
--6h e i

                                           --7--
--Funcion map: toma una funcion y una lista como entrada.
-- map :: (a->b)->[a]->[b]
--        ^^^^^   ^^^
--       funcion  lista
--Aplica la funcion a cada elemento de la lista y devuelve otra lista con los resultados.

--A que equivale la expresion map succ [1, -4, 6, 2, -8], donde succ n = n+1?
-- Suma +1 a cada elemento de tipo Int de la lista dada. Devuelve [2, -3, 7, 3, -7].

--Funcion filter: Es una funcion que toma una funcion que devuelve valor booleano y una
-- lista como entrada. Devuelve una lista que contiene los elementos de la lista de entrada 
--en los cuales la funcion booleana devuelve True.
-- filter :: (a->Bool)->[a]->[a]
--            ^^^^^^^   ^^^
--           Funcion    Lista
--Y la expresion filter esPositivo [1, -4, 6, 2, -8]?
-- Esta funcion discrimina entre enteros positivos y negativos. El resultados es la nueva lista:
-- [1, 6, 2]

--8a
ejercicio8:: [Int] -> [Int]
ejercicio8  [] = []
ejercicio8 (x:xs) = (x*2): ejercicio8 xs

--8b

dupli2 x = map (*2) x




