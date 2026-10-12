

data Tree a = Leaf | Branch a (Tree a) (Tree a)
	deriving Show
	
	
-- tipo di dato polimorfo ricorsivo


-- costruttore Leaf privo di args. 
-- mentre Branch ne ha 3 


-- es: 
-- :type Branch 1 Leaf (Branch 2 Leaf Leaf)


empty :: Tree a -> Bool
empty Leaf = True
empty _ = False 


depth :: Tree a -> Int
depth Leaf = 0
depth (Branch _ t1 t2) = 1 + max (depth t1) (depth t2)


elements :: Tree a -> [a]
elements Leaf = []
elements (Branch _ t1 t2) = elements t1 ++ [x] ++ elements t2


-- op fondamentali sugli alberi di ricerca

tmax :: Tree a -> a
tmax (Branch x _ Leaf) = x
tmax (Branch _ _ t) = tmax t


-- determina l'el. più grande in un albero binario di ricerca
-- che può essere individuato seguendo tutte le diramazioni destre
-- dell'albero



insert :: Ord a => a -> Tree a -> Tree a
insert x Leaf = Branch x Leaf Leaf 
insert x t (Branch y t1 t2) = 	| x == y = t
			  	| x < y = Branch y (insert x t1 ) t2
			  	| otherwise = Branch y t1 (insert x t2)
			  	

-- la delete sta nella scheda del laboratorio

			  	
