
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

data Zona = Arco | Defensa | Mediocampo | Delantera deriving (Eq, Show)
data TipoReves = DosManos | UnaMano deriving (Show)
data Modalidad = Carretera | Pista | Monte | BMX deriving (Show)
data PiernaHabil = Izquierda | Derecha deriving (Show)


type ManoHabil = PiernaHabil

data Deportista = Ajedrecista | Ciclista Modalidad | Velocista Altura | Tenista TipoReves ManoHabil Altura | Futbolista Zona NumCamiseta PiernaHabil Altura deriving (Show)

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
    Futbolista z' _ _ _ -> if z==z' then (1 + contar_futbolistas xs z ) else contar_futbolistas xs z
    _ -> contar_futbolistas xs z



--4E

{-filtratfut :: [Deportista] -> Zona -> Int
filtratfut [] z = 0
filtratfut (x:xs) z = filter contar_futbolistas xs z-}


--5

sonidoNatural :: NotaBasica -> Int
sonidoNatural Do = 0
sonidoNatural Re = 2
sonidoNatural Mi = 4
sonidoNatural Fa = 5
sonidoNatural Sol = 7
sonidoNatural La = 9
sonidoNatural Si = 11

data Alteracion = Bemol | Natural | Sostenido deriving (Eq)

sonidoAlterado :: Alteracion -> Int
sonidoAlterado Bemol = (-1)
sonidoAlterado Natural = 0
sonidoAlterado Sostenido = 1

data NotaMusical = Nota NotaBasica Alteracion deriving (Eq)

sonidoCromatico :: NotaMusical -> Int
sonidoCromatico (Nota s a) = sonidoNatural s + sonidoAlterado a


--6
{-ACA USO  MAYBE QUE YA ESTA DEFINIDA EN EL PRELUDIO DE HASKELL 
d a t a Maybe a = N o t hi n g | J u s t a
EJ:
dividir : : I n t −> I n t −> Maybe I n t
dividir x 0 = N o t hi n g
dividir x y = J u s t ( x ` di v ` y )
-}

primerElemento :: [a] -> Maybe a
primerElemento [] = Nothing
primerElemento (x:xs) = Just (head (x:xs))

--7

data Cola = VaciaC | Encolada Deportista Cola deriving (Show)

atender :: Cola -> Maybe Cola
atender VaciaC = Nothing
atender (Encolada a b)= Just (b)


{-Consigo la recursion llamando nuevamente a 'b' que equivale a Cola, la cual crea la recursividad-}

encolar :: Deportista ->  Cola -> Cola
encolar x VaciaC = Encolada x VaciaC
encolar x (Encolada v y) = Encolada v (encolar x y)

busca :: Cola -> Zona -> Maybe Deportista
busca VaciaC _ = Nothing
busca (Encolada x y) z = case x of
                        Futbolista z' _ _ _  -> if z==z' then Just x else busca y z



data ListaAsoc a b = Vacia | Nodo a b (ListaAsoc a b) deriving (Show)

--Nodo a b (ListaAsoc a b)
--          ^^^^^^^^^^^^^
--      Representa el resto de la lista, permite recorrer recursivamente los datos. 
--      Represento esto con la palabra 'lista' en la linea 152. 


type Diccionario = ListaAsoc String String

type Padron = ListaAsoc Int String

--Puedo hacerlo de la misma forma que esta definido Diccionario. El primer String 
--puede representar un nombre y el segundo un numero telefonico.

la_long :: ListaAsoc a b -> Int
la_long Vacia = 0
la_long (Nodo a b lista) = 1 + la_long lista

--la_long (Nodo (Ajedrecista) 1 (Nodo (Ajedrecista) 3 Vacia)) = 2

-- 'lista' es la parte de la lista que aún no se ha procesado y se 
-- utiliza para realizar la recursión en esta función.

la_concat :: ListaAsoc a b -> ListaAsoc a b -> ListaAsoc a b
la_concat Vacia x = x
la_concat x Vacia = x
la_concat (Nodo a b lista) (Nodo x y lista') = Nodo a b (la_concat lista(Nodo x y lista'))

ejem1 = Nodo "clave1" "valor1" (Nodo "clave2" "valor2" Vacia)
ejem2= Nodo "clave3" "valor3" Vacia

--la_concat ejem1 ejem2
--Nodo "clave1" "valor1" (Nodo "clave2" "valor2" (Nodo "clave3" "valor3" Vacia))

la_agregar :: Eq a => ListaAsoc a b -> a -> b -> ListaAsoc a b
la_agregar Vacia a b = (Nodo a b Vacia)
la_agregar (Nodo a b lista) x y | x==a = (Nodo a y lista)
                                | x/=a = (Nodo a b (la_agregar lista x y))

la_pares :: ListaAsoc a b -> [(a,b)]
la_pares Vacia = []
la_pares (Nodo a b lista) = [(a, b)]

la_busca :: Eq a => ListaAsoc a b -> a -> Maybe b
la_busca Vacia a = Nothing
la_busca (Nodo x y lista) a | x==a = Just (y)
                            | x/=a = la_busca lista a

la_borrar :: Eq a => a -> ListaAsoc a b -> ListaAsoc a b
la_borrar a Vacia = Vacia
la_borrar a (Nodo x y lista) | a==x = la_borrar a lista
                             | a/=x = (Nodo x y lista)