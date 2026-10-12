potenza :: Int -> Int -> Int 
potenza m n | n > 0 = m * potenza m (n-1)
	    | otherwise = 1
	   
	  
pow2 :: Int -> Int
pow2 x = potenza 2 x


fibonacci :: Int -> Integer
fibonacci = aux 0 1
  where
    aux m _ 0 = m
    aux m n k = aux n (m + n) (k - 1)
    
    
scambia :: (Int, Int) -> (Int, Int)
scambia (x,y) = (y, x)


ordina :: (Int, Int, Int) -> (Int, Int, Int)
ordina (x, y, z) | x > y = ordina (y, x, z)
ordina (x, y, z) | y > z = ordina (x, z, y)
ordina (x, y, z) | otherwise = (x, y, z)

type Complesso = (Double, Double)

somma_c :: Complesso -> Complesso -> Complesso
somma_c (x1, y1) (x2, y2) = (x1+x2, y1+y2)


sott_c :: Complesso -> Complesso -> Complesso
sott_c (x1, y1) (x2, y2) = (x1-x2, y1-y2)


neg_c :: Complesso -> Complesso
neg_c (x, y) = (negate x, y)

fattoriale :: Int -> Int
fattoriale n = product [2..n]

intervallo :: Int -> Int -> [Int]
intervallo n m | n < m = [n..m]
	       | otherwise = []
	       
primo :: Int -> Bool 
primo n = (n `mod` 2 /= 0) 


primi :: Int -> [Int]
primi n = aux 2
  where
    aux k | k > n     = []
          | primo k   = k : aux (k + 1)
          | otherwise = aux (k + 1)


somma :: [Int] -> Int
somma []       = 0
somma (x : xs) = x + somma xs

prodotto :: [Int] -> Int
prodotto [] = 1
prodotto (x : xs) = x * prodotto xs

inverti :: [Int] -> [Int]
inverti [] = []
inverti (x : xs) = (inverti xs) ++ [x]

concat :: [[a]] -> [a]
concat = foldr (++) []


any :: (a -> Bool) -> [a] -> Bool
any x = foldl (||) False . map x  

all :: (a -> Bool) -> [a] -> Bool
all p = foldr (&&) True . map p


massimo :: Ord a => [a] -> a
massimo (x : xs) = foldr max x xs










