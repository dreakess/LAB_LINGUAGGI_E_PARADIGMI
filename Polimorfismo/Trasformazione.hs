

arrotonda :: (RealFrac a, Integral b) => [a] -> [b]
arrotonda [] 	= []
arrotonda (x : xs) = round x : arrotonda xs 



-- map :: (a -> b) -> [a] -> [b]
-- map _ [] 	= []
-- map f (x : xs) = f x : map f xs


-- map ha la stessa forma della funzione arrotonda

-- trasforma una lista di el. di tipo a in una lista di tipo b


-- un'altra funzione è quella che filtra e o seleziona gli elem. che soddisfano una 
-- determinata proprietà

-- filter infatti è definita come :: (a -> Bool) -> [a] -> [a]


-- posso comporre le due cose 

-- esempio: filter (> 2) (map (^2) [..lista che voglio inserire..] )


-- filter _ [] = []
-- filter p (x : xs)	| p x 	= x : filter p xs
--			| otherwise = filter p xs


-- quicksort :: Ord a => [a] -> [a]
-- quicksort [] = []
-- quicksort (x : xs) =
-- quicksort (filter (< x) xs) ++ [x] ++ quicksort (filter (=> x) xs)

-- implementazione dell'algoritmo non ricorsiva in coda


-- Fold -> funzione che combina tutti gli elem. di una lista usando
-- un determinato operatore binario


-- (a -> b -> b) = traformazione da applicare agli elem. della lista
-- se la lista è vuota allora resituisco il caso base -> ovvero x

-- altrimenti applico prima ad y = testa della lista ad f 
-- e poi ricorsivamente al resto della lista ys

-- foldr :: (a -> b -> b) -> b -> [a] -> b
-- foldr _ []	= x
-- foldr f x (y : ys) = f y (foldr f x ys)


-- foldr (op) 0 [a1, a2, .., an] = a1 op (a2 op (..)) 

-- op assoc. a destra


sum :: Num a => [a] -> a
sum = foldr (+) 0

--foldl :: (a -> b -> b) -> b -> [a] -> b
--foldl _ []	= x
--foldl f x (y : ys) = (foldl f x ys) f y

-- length . filter (=> 0) 
-- prende una lista e filtra per el => 0 e poi ne calcola la lunghezza


-- foldr (&&) True . map (=> 0)

-- la mappa mi restituisce gli 




-- foldl (\xs x -> x : xs) [] [lista input]

-- mi restituisce la lista inversa


concat :: [[a]] -> [a]
concat (x : xs) = foldl (++) x xs

-- utilizzo la foldl, altrimeti viene associato a sinistra e

-- quindo se ho una lista di [[1,2],[2,3]] avrò [2,3,1,2]


any :: (a -> Bool) -> [a] -> Bool
any f = foldr (||) False . map f 

-- funzione all

all :: (a -> Bool) -> [a] -> Bool
all f = foldr (&&) True . map f



massimo :: Ord a => [a] -> a
massimo (x : xs) = foldr max x xs

occorrenze :: Eq a => a -> [a] -> Int
occorrenze x = length . filter (== x)



membro :: Eq a => a -> [a] -> Bool
membro p = Main.any(==p)


-- primi :: Int -> [Integer]
-- primi = aux 2
-- where 
--	aux _ 0 = [] 
--	aux k n	| primo k = K : aux (k+1) (n-1)
--			| otherwise = aux (k+1) n  

-- funzione ricorsiva senza caso base

-- enumFrom :: Enum a => a -> [a]
-- enumFrom n = n : enumFrom (succ n)

-- genera la lista infinita a partire da un certo n

-- da questo capiamo la possibilità di ottenere la lista infinita di
-- num naturali primi 



-- quindi la funzione primi diventa

-- primi n = take n (filter primo (enumFrom 2))


-- take prende i primi n numeri all'interno della lista infinita di primi	



primoMaggioreDi :: Integer -> Integer 

primoMaggioreDi n = head( filter (> n) (filter primo (enumFrom 2)) )


-- manca la primiGemelli








 

























 













