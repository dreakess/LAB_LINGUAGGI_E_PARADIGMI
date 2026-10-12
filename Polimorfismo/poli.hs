-- utilizzo il tipo generale 

-- id :: a -> a

-- composizione funzionale :

-- (.) :: (b -> c) -> (a -> b) -> a -> c
-- f g x = f (g x)


-- fst (x, _)	= x
-- snd (_, y)   = y 

-- tipo curry f (x, y) = f x y

-- a -> b -> ((a, b) -> c)

-- tipo uncurry f x y = f (x, y)

-- ((a, b)->c) -> (a -> b)-> c


-- [a] -> Int

-- potrebbe essere la length


-- [a] -> Bool

-- potrebbe essere (la lista comprendo almeno 5 elem)



-- [a] -> a, scegli un elemento di questa lista e lo restituisce

-- notiamo che accedere al primo el. della lista non ha un costo computazionale
-- sostanziale mentre il contrario (ovvero accedere all'ultimo si)

-- [[a]] -> [a]

-- potrebbe essere head che restituisca la prima lista di lista 


 -- classe Eq  := == /=
 
 -- classe dei tipi per cui esiste un ordine di tipo tot. = <, <=, min, max
 
 
 







