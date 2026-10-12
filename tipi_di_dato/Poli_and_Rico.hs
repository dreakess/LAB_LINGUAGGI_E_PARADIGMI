-- tipi polimorfi e ricorsivi



-- applicando gli argomento al costruttore di un tipo di dato
-- creiamo effetivamente il tipo di dato richiesto





data Maybe a = Nothing | Just a


Just 1 :: Maybe Int
Just True :: Maybe Bool
just [0.5] :: Maybe [Float]


-- il tipo Maybe è gia def. in Haskell

-- parametro di tipo a che non è def. come tipo Bool, Float, .. 

-- --> è generico


-- manca la seconda parte della lezione


data Either a b = Left a | Rigth b


-- sto costruendo l' unione disgiunta di due tipi a e b


-- valori della forma Left x dove x è di tipo T

-- oppure della forma Rigth y dove y è di tipo S


-- posso creare delle liste di questi tipi [Left 1, Rigth True]



-- Tipi ricorsivi


data List a = Nil | Cons a (List a)


-- notiamo a dopo List, ovvero voglio creare un tipo polimorfo di lista

-- Nil
-- Cons 1 Nil
-- Cons 1 (Cons 2 (Cons 3 Nil))


-- da fare gli esercizi del capitolo



-- maybeMap :: (a -> b) -> Maybe a -> Maybe b
-- e gli altri due 






























 











	
	
	
	
	
	
	






































































