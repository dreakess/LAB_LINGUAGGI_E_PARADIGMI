-- Enumerazioni 


-- data Bool


-- data Mossa = Sasso | Carta | Forbici
--  deriving show

--  


-- data "nuovo dato" = .. | .. | .. 
-- sto def. i costruttori del tipo di dato


-- def. il tipo di dato unitario

-- data () = ()

-- ovvero un tipo di dato con un solo costruttore

-- caso molto particolare del tipo Enumerazione


data PuntoCardinale = Nord | Sud | Est | Ovest 
	deriving Show


sinistra :: PuntoCardinale -> PuntoCardinale
sinistra Nord  = Est
sinistra Est   = Sud
sinistra Sud   = Ovest
sinistra Ovest = Nord


destra :: PuntoCardinale -> PuntoCardinale
destra x = indietro . sinistra

indietro :: PuntoCardinale -> PuntoCardinale
indietro x = sinistra . indietro


data Giorno = Lun | Mar | Mer | Gio | Ven | Sab | Dom
	deriving Show
	
domani :: Giorno -> Giorno
domani Lun = Mar
domani Mar = Mer
domani Gio = Ven
domani Ven = Sab
domani Sab = Dom
domani Dom = Lun


fra :: Int -> Giorno -> Giorno
fra 0 = id
fra n = domani . fra (n - 1)



-- costruttori parziali e totali
elemento :: Int -> [Int] -> Int
elemento 0 (x : _) = x
elemento n (_ : xs) = elemento (n - 1) xs
-- elemento _ _ = -1


-- la funzione elemento è diventata totale


data ForseInt = Niente | Proprio Int
	deriving Show


-- con ciò posso ridefinire il mio metodo in 

elemento :: Int -> [Int] -> ForseInt 
elemento 0 (x : _) 	= Proprio x
elemento n (_ : xs) 	= elemento (n-1) xs
elemento _ _		= Niente


testa :: [Int] -> ForseInt
testa (x : xs) = Proprio x
testa _ _  = Niente



-- IMPLEMENTAZIONE DELLA JAVA VIRTUAL MINI MACHINE

-- def. le strutture fondamentali

type Value  = Int
type Var = Int -- variabile rapp. come indici e quindi numeri
type Stack = [Value]
type Frame = [Value]


-- per quanto riguarda lo stack, usiamo il costruttore cons ":"
-- per modellare l'inserimento di un valore in cima

-- [2, 3] rapp. lo stack con la cima = 2 



load :: Var -> Frame -> Value 
load _ [] = 0
load 0 (v : _) = v
load n (_ : vs) = load (n-1) vs 


store :: Var -> Value -> Frame -> Frame
store 0 v [] = [v] -- se il frame è vuoto allora inizializzo il frmae
store 0 v (_ : vs) = v : vs -- altrimenti continuo a concatenare
store n v [] = 0 : store (n-1) v []
store n v (w : vs) = w : store (n-1) v vs


type Code = [Instruction]

data Instruction
	= PUSH Value
	| LOAD Var
	| Store Var
	| OP (Value -> Value -> Value)
	| If (Value -> Value -> Bool) Code
	| RETURN
	
-- realizzazione del'esecutore sulla scheda del laboratorio




	









	
	
	
	
	


































































	
	
	












