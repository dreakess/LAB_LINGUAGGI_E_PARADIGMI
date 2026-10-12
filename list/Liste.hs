-- tutta la gestione della memoria non ci interessa


-- pattern matching di tuple


add :: (Int, Int) -> Int
-- add (x, y) = x + y
add p = fst p + snd p
-- oppure posso trattare la coppia come parametro di p




scambia :: (Int, Int) -> (Int, Int)
scambia (x, y) = (y,x)


ordina :: (Int, Int, Int) -> (Int, Int, Int)
ordina (x, y, z)	| x > y      = ordina (y, x, z)
			| y > z      = ordina (x, z, y)
			| otherwise  = (x, y, z)
			
				 
strano :: (Int, Int) -> ((Int, Int), (Int, Int))
strano p = (p,p)				 
		
		
		
-- fromIntegral è una funzione di conversione				 
-- che prende un a  :: Integral e mi ritorna un b :: Num

-- LISTE

-- lista inf. [1..]

-- lista [1..10]  


-- modo canonico di costruire le liste

-- maniera alternativa di dichiarare una lista 1 : 2 : 3 : []


-- : sarebbe il cons

-- il : è associativo a destra


-- length :: [a] -> Int

-- concat. = ++


-- 1 : 2 -> espressione mal tipata
-- manca : []


intervallo :: Int -> Int -> [Int]
intervallo m n	| m > n = []
		| otherwise = m : intervallo (m+1) n


-- metodo che sfrutta la non ricorsività per trovare la media di
-- una lista di interi

media :: [Int] -> Int
media xs = div (sum xs) (length xs)



-- primi :: Int -> [Int]
-- primi n 	| (n primo) == True = n : primi (n-1)
--		| otherwise primi (n-1)  



-- Pattern matching strutturale

-- somma :: [Int] -> Int 
-- somma [] 	= 0 
-- somma (x : xs) = x + somma xs 



-- Pattern matching profondo

-- ordinata :: [Int] -> Bool
-- ordinata [] 	 = True
-- ordinata [_]	 = True
-- ordinata (x : y : xs) = x <= y && ordinata (y : ys )
	
-- Pattern Matching su più args.

-- stessaLunghezza :: [Int] -> [Int] -> Int
-- stessaLunghezza xs ys = length xs == length ys











