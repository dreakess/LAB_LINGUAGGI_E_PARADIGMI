prodotto :: [Int] -> Int
prodotto [] = 1
prodotto (x : xs) = x * prodotto xs


stessaLunghezza :: [Int] -> [Int] -> Bool
stessaLunghezza []       []       = True
stessaLunghezza []       _        = False
stessaLunghezza _        []       = False
stessaLunghezza (_ : xs) (_ : ys) = stessaLunghezza xs ys


--sommaCongiunta :: [Int] -> [Int] -> [Int]
--sommaCongiunta []       xs	= xs
--sommaCongiunta xs       []	= xs
--sommaCongiunta (x : xs) (y : ys) = x + y : sommaCongiunta xs y




fattoriale :: Int -> Int
fattoriale n = product [2..n]


intervallo :: Int -> Int -> [Int]
intervallo m n | m > n     = []
               | otherwise = m : intervallo (m + 1) n
               

primo :: Int -> Bool
primo n = aux 2
  where
    aux k | k >= n         = k == n
          | n `mod` k == 0 = False
          | otherwise      = aux (k + 1)               
               

primi :: Int -> [Int]
primi n | n == 1 = 1:[]
primi n | primo n = n : primi (n-1)
primi n | otherwise = primi (n-1)  


