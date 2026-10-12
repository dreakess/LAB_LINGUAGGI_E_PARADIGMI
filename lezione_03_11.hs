maxLength ::  [[a]] -> [[a]]
maxLength xs = [x | x <- xs, length x == maximum (map (length) xs)]

-- maximum prende una lista non vuota di interi e mi ritorna la lista 
-- più grande

piuLunga :: [[a]] -> [[a]]
piuLunga xs =
	filter ((== m) . length) xs
	where 
		m = maximum (map length xs)
		
		
-- perchè funziona la composizione:
-- length: :: Eq a => [a] -> a
-- (== m) :: Eq a = a -> Bool
-- ((== m) . length) :: [a] -> Bool

-- maximum :: [a] -> a

-- filter :: (b -> Bool) -> [b] -> [b] 		


-- map :: (a -> b) -> [a] -> [b]
-- map f xs = foldr ((:) . f) [] xs 

-- foldr :: (a->b->b) -> b -> [a] -> b
-- f = lista_fil => 
-- foldr :: (a->[a]->[a]) -> [a] -> [a]

-- foldr -> funzione di ordine superiore,
-- perché utilizza funzioni all'interno della sua
-- definizione

-- seconda parametro: un tipo b
-- terzo parametro: una lista di dati a
-- restituisce una lista di dati

-- la p è la condizione secondo cui viene filtrata 
-- la lista

-- funzione che a partire da un valore iniziale di una lista
-- restituisce un valore
-- il valore finale è lo stesso di quello iniziale (b) 
-- proprio perché il valore finale potrebbe essere il
-- valore iniziale

 filter p = foldr (lista_ fil) []
 	where
 		lista_fil x xs =
 		if p x then x:xs else xs
 		
lista_fil :: a -> [a] -> [a]

-- > filter (>0) [1,2,3]
-- in questo caso foldr si aspetta altro e non la lista
-- come in questo esempio


sottoLista :: [a] -> [a] -> Bool
sottoLista [] _ = True
sottoLista _ [] = False
sottoLista  x:xs y:ys
	| x == y sottoLista xs ys 
	| otherwise sottoLista x:xs ys
	
	
-- pesco un elemento nella prima lista e lo cerco nella 
-- seconda..

-- quando finisco nell'ultima strada allora so che 
-- x != y e quindi allego la sottolista ys per continuare
-- a cercarlo (nella coda della lista dopo y)
 
 
 listaSottoliste :: [a] -> [[a]]

-- [1,2,3] |-> [[], [1],[2],[3],[1,2],[1,3],[2,3],[1,2,3]]


-- listaSottoliste L = 
-- per ogni x \in L 


-- listaSottoliste xs = liste_con_x U liste_senza_x

-- con x \in xs 

listaSottoliste xs = liste_con_x ++ liste_senza_x
listaSottoliste (y:ys) = [y:sl | x <- xs, ls <- (listaSottoliste ys)] ++ listaSottoliste ys

 
 -- per ogni y vado a costruire (usando i generatori)
 -- {[]} le sottoliste della coda e ci metto davanti la
 -- y
 
 
 sottoListe :: [a] -> [[a]] 
 sottoListe [] = [[]]
 sottoListe (x : xs) = xss ++ map(x :) xss
 	where 
 		xss = sottoListe xs
 
 
 type miaFun = Int -> Int
 
 -- macro per def. funzione da interi a interi
 
type matrix = (Int, Int, Int, Int) 
 
 
data Mossa = Sasso | Carta | Forbici
	deriving Show	
-- fa in modo che la visualizzazione di un costruttore
-- sia il nome del costruttore stesso	


-- come per Bool = {True, False}


-- tipo unitatorio
data () = ()

-- simile al tipo void 


data PuntoCardinale = Nord | Sud | Ovest | Est
	deriving Show
	
	
-- sinistra :: PuntoCardinale -> PuntoCardinale
-- ..

-- fra :: Int -> Giorno -> Giorno
-- fra 0 = id
-- id :: Giorno -> Giorno
-- fra n = domani . fra (n - 1)	
 
 -- componendo domani con la funzione stessa
 -- la itero n volte
 
 
 -- usando la funzione replicate (gli ultimi 10 min)
 
