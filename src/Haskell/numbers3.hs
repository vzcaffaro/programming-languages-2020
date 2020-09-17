-- an interpreter for abstract syntax in Haskell

-- a language for arithmetic expressions
data Exp = Num Int | Plus Exp Exp | Times Exp Exp 

eval :: Exp -> Int
eval (Num n) = n
eval (Plus n m) = (eval n) + (eval m)
eval (Times n m) = (eval n) * (eval m)
-- eval (Times (Num 2) (Num 3))
-- eval (Plus (Num 1) (Times (Num 2) (Num 3)))
