-- an interpreter for abstract syntax in Haskell

-- a language for arithmetic expressions
data Exp = Num Integer | Plus Exp Exp | Times Exp Exp 

eval :: Exp -> Integer
eval (Num n) = n
-- the next two equations show two common naming conventions
-- choose the one you like better
eval (Plus e1 e2) = (eval e1) + (eval e2)
eval (Times e e') = (eval e) * (eval e')
-- eval (Times (Num 2) (Num 3))
-- eval (Plus (Num 1) (Times (Num 2) (Num 3)))

