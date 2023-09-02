-- Maria Luz Varas

--1a

esCero :: Int -> Bool
esCero x = x==0

-- b

esPositivo :: Int -> Bool
esPositivo n = n > 0

--Main> esPositivo 3
--True
--Main> esPositivo (-3)
--False

-- c

esVocal :: Char -> Bool
esVocal x = (x == 'a') || (x == 'e') || (x == 'i') || (x == 'o') || (x == 'u')

--Main> esVocal 'o'
--True
--Main> esVocal 'n'
--False


-- d

valorAbsoluto :: Int -> Int
valorAbsoluto x
  | x >= 0 = x
  | x < 0 = x * (-1)


--Main> valorAbsoluto 6
--6
--Main> valorAbsoluto (-6)
--6

-- 2A
paratodo :: [Bool] -> Bool
paratodo [] = True
paratodo (x : xs)
  | x == True = paratodo xs
  | x == False = False


--paratodo [False,True]
--False
--paratodo [True,True]
--True
--paratodo [False,True]
--False

--2b
sumatoria :: [Int] -> Int
sumatoria [] = 0
sumatoria (x : xs) = x + sumatoria xs

--sumatoria [2,5,9,6]
--22
--sumatoria [0]
--0

-- 2c

productoria :: [Int] -> Int
productoria [] = 1
productoria (x : xs) = x * (productoria xs)

--productoria [2,2,2,2,2,2,2,2,5]
--1280
--productoria [2,2,8,9,0]
--0

-- 2d

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * (factorial (n - 1))

--factorial 00
--1
--factorial 7
--5040

-- 2e
promedio :: [Int] -> Int
promedio [] = 0
promedio xs = div (sumatoria xs) (length xs)
{-
promedio [8,9,7]
8
promedio [8,9,7,7,4,8]
7
-}
-- 3
pertenece :: Int -> [Int] -> Bool
pertenece n [] = False
pertenece n (x : xs)
  | n == x = True
  | n /= x = pertenece n xs
{- *Main> pertenece 4 [3,2,5,4]
True
*Main> pertenece 4 [3,2,5]
False
-}
-- 4 a


paratodo' :: [a] -> (a -> Bool) -> Bool
paratodo' [] t = True
paratodo' (x : xs) t
  | t x == True = paratodo' xs t
  | otherwise = False

{-paratodo' [2,3,4,5,6,7,8,9,10] esPositivo 
True
paratodo' [2, (-1)] esPositivo 
False
-}


-- 4b


existe' :: [a] -> (a -> Bool) -> Bool
existe' [] t = False
existe' (x : xs) t
  | t x == False = existe' xs t
  | otherwise = True

{-existe' [2, (-1)] esPositivo 
True
existe' [ (-1)] esPositivo 
False-}

-- 4c


sumatoria' :: [a] -> (a -> Int) -> Int
sumatoria' [] t = 0
sumatoria'(x:xs) t = t x+ sumatoria' xs t 
{-*Main> sumatoria' [2,3] cuad 
13
*Main> sumatoria' [2,(-3),3] cuad 
22-}
--4d

productoria' :: [a] -> (a -> Int) -> Int
productoria' [] t = 1
productoria' (x:xs) t = t x * productoria' xs t
{-*Main> productoria' [5,6,2] cuad
3600
*Main> productoria' [5,6,2,0] cuad
0-} 
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
fibb:: Int -> Int
fibb 0 = 0
fibb 1 =1 
fibb n = fibb (n - 1) + fibb (n - 2)

esFibb :: [Int ]
esFibb = [fibb x | x <- [0..]]

esFibAux :: Int -> [Int] -> Bool
esFibAux x [] = False
esFibAux x (y:ys) | x<y = False
                  | x>y = esFibAux x ys
                  | x==y = True


esFib m = esFibAux m esFibb
--EJEMPLOS
--Main> esFib 2
--True
--Main> esFib 5
--True
--Main> esFib 6
--False

tFib :: [Int] -> Bool
tFib m = paratodo' m esFib
--EJEMPLOS
--Main> tFib [2,3,6,9,5,15]
--False
--Main> tFib [2,3]
--True

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

{-*Main> ejercicio8 [3,4,5,0]
[6,8,10,0]
*Main> ejercicio8 [7,8,9]
[14,16,18]-}
--8b

dupli2 x = map (*2) x
{--}
--9a

seraPrimo:: [Int] -> [Int]
seraPrimo [] = []
seraPrimo (x:xs) | esPrimo x == True = x:seraPrimo xs
                 | esPrimo x == False = seraPrimo xs
{-*Main> seraPrimo [2,5,8]
[2,5]
*Main> seraPrimo [4,8,12]
[]-}
--9b

seraPrimo2 xs= filter esPrimo xs
{-*Main> seraPrimo2 [5,4,8]
[5]
*Main> seraPrimo2 [5,4,8,0,16,17]
[5,0,17]-}
--9c

esPrimo3:: Int -> Bool
esPrimo3 x = not (null (filter esPrimo [2..x]))

{-*Main> esPrimo3 3
True
*Main> esPrimo3 1
False-}
--10a
primIgualesA:: Eq a=> a -> [a] -> [a]
primIgualesA n [] = []
primIgualesA n (x:xs) | (n == x) = x : primIgualesA n xs
                      | otherwise = []

{-*Main> primIgualesA 8 [8,8,8,5,8,4]
[8,8,8]
*Main> primIgualesA 8 [5,6,2,5,6,2]
[]-}
--10b

primIgualesA2 n xs = takeWhile (\x -> x==n) xs
{-*Main> primIgualesA2 6 [6,5,7]
[6]
*Main> primIgualesA2 6 [6,6,6,6,6,5,7]
[6,6,6,6,6]-}
--11a

primIguales :: Eq a => [a] -> [a]

primIguales [] = []
primIguales [x] = [x]

primIguales (x:xs) | (x == head xs) = x : primIguales xs
               | otherwise = [x]
{-*Main> primIguales [2,3,45]
[2]
*Main> primIguales [2,2,2,2,23,45]
[2,2,2,2]-}

--11b

primIguales11 :: Eq a => [a] -> [a]
primIguales11 xs = primIgualesA (head xs) xs

{-*Main> primIguales11 [11,11,2,3,11]
[11,11]
*Main> primIguales11 [0,2,5,8]
[0]-}

