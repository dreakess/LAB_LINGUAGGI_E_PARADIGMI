scambia :: (Int, Int) -> (Int, Int)
scambia  (x, y) = (y, x)


curry :: ((a, b) -> c)->a->b->c
curry f x y	= f (x, y)
curry \f \x \y f(x, y)

-- > curry f 2 3 con f funzione -- 

uncurry :: (a->b->c)->(a,b)->c

uncurry f (x,y) = f x y
uncurry = \f \(x,y) f x y 


inverti :: [Int] -> [Int]
inverti []	 = []
inverti (x : xs) = inverti xs ++ [x]

inverti_v = accumula []
	where
		accumula as [] = as
		accumula as (x : xs) = accumula (x : xs) xs
		
		
map :: (a->b) -> [a] -> [b]
map _ [] 	= []
map f (x : xs) = f x : map f xs		

-- f = round rispetto all'esempio di laboratorio --

-- (arg. f(a, b) -> b, arg b, una lista di [type :: a]) --> b  --

foldr :: (a -> b -> b) -> b -> [a] -> b
foldr _ x []       = x
foldr f x (y : ys) = f y (foldr f x ys)




