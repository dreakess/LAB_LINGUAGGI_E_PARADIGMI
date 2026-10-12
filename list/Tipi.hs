-- haskell linguaggio fortemente tipato, cosi come java, c, ..


-- :t o :type "qualcosa", posso chiedere ad Haskell il tipo


-- posso castare i tipi

-- esempio: 1 :: Int, ovvero int da (tipo) Num -> (tipo) Int

-- fromIntegral , posso upcastare numeri, overro passo da 

-- un dominio di interi a un dominio di b

-- div 1 2 == 0

-- div 1.5 2 = errore (1.5 mal formato)
-- 

-- quindi -> diventa div (truncate 1.5) 2

-- (1 :: Int) / 2 -> errore, essendo '/' per def. un operatore di Fractional 
-- se casto in int l'argomento mi da errore

-- (2 :: int) + (3 :: Integer) -> errore di tipo su Integer

-- (2 :: Float) <= 3 


-- truncate 1.5 --> tronca in 1

-- round 1.5  --> approssima all'estremo superiore

