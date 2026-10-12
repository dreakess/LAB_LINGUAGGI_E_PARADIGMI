





-- matching di regular expr 



data RegExp a =   Nil
		| Eps
		| Atom a
		| Sum (RegExp a) (RegExp a) -- rapp l'unione di due regualr expr
		| Seq (RegExp a) (RegExp a)
		| Star (RegExp a)
	deriving Show
	
	
-- ho def. la struttura che sarebbe la mia grammatica


f :: RegExp Int	
f = Seq (Star (Atom 0)) (Start (Atom 1))


-- come alfabeto di rif. sto usando il tipo Int 


-- NULL(x)

nullable :: RegExp a -> Bool
nullable NIl 	= False
nullable Eps 	= True
nullable (Atom _) = False 
nullable (Sum f g) = nullable f || nullable g
nullable (Seq f g) = nullable f && nullable g
nullable (Star _) = True


-- la def. di derivata la troviamo sulla scheda di lab.














 











