
--Maria Luz Varas

--1

data Carrera = Matematica | Fisica | Computacion | Astronomia

titulo :: Carrera -> String
titulo Matematica = "Licenciatura en Matematica"
titulo Fisica = "Licenciatura en Fisica"
titulo Computacion = "Licenciatura en Computacion"
titulo Astronomia = "Licenciatura en Astronomia"

data NotaBasica = Do | Re | Mi | Fa | Sol | La | Si deriving (Show, Eq, Ord, Bounded)

cifradoAmericano :: NotaBasica -> Char
cifradoAmericano Do = 'C'
cifradoAmericano Re = 'D'
cifradoAmericano Mi = 'E'
cifradoAmericano Fa = 'F'
cifradoAmericano Sol = 'G'
cifradoAmericano La = 'A'
cifradoAmericano Si = 'B'

--3

minimoElemento :: (Bounded a, Ord a) => [a] -> a
--minimoElemento [] = maxBound
minimoElemento [x] = x
minimoElemento (x:xs) = min x (minimoElemento xs)


minimoElemento' :: (Ord a, Bounded a) => [a] -> a
minimoElemento' [] = maxBound
minimoElemento' (x:xs) = min x (minimoElemento' xs)

--4

type Altura = Int
type NumCamiseta = Int

data Zona = Arco | Defensa | Mediocampo | Delantera
data TipoReves = DosManos | UnaMano
data Modalidad = Carretera | Pista | Monte | BMX
data PiernaHabil = Izquierda | Derecha

type ManoHabil = PiernaHabil

data Deportista = Ajedrecista | Ciclista Modalidad | Velocista Altura | Tenista TipoReves ManoHabil Altura | Futbolista Zona NumCamiseta PiernaHabil Altura 

-- 4B
-- El tipo del constructor Ciclista es un tipo algebraico de un argumanto.

contar_velocistas :: [Deportista] -> Int
contar_velocistas [] = 0
contar_velocistas (x:xs) = case x of
    Velocista _ -> 1 + contar_velocistas xs
    _ -> contar_velocistas xs

contar_futbolistas :: [Deportista] -> Zona -> Int
contar_futbolistas [] z = 0
contar_futbolistas (x:xs) z = case x of
    Futbolista z _ _ _ -> 1 + contar_futbolistas xs z
    _ -> contar_futbolistas xs z

contar_futbolistas' :: [Deportista] -> Zona -> Int
contar_futbolistas' (x:xs) z = length (filter fubZona xs)
    where
        fubZona (Futbolista z' _ _ _) = z' == z
        _ = False