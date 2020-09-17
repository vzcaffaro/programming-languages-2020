-- an interpreter of abstract syntax in successor numbers

-- successor numbers
data NN = O | S NN
    deriving (Eq,Show)

-- addition
add :: NN -> NN -> NN
add O n = n
add (S n) m = S (add n m)
-- add (S O) (S (S O))

-- multiplication
mult :: NN -> NN -> NN
mult O n = O
mult (S O) n = n
mult (S n) m = add m (mult n m)
-- mult (S (S O)) (S (S ( S O)))

-- a language for arithmetic expressions
data Exp = Num Int | Plus Exp Exp | Times Exp Exp

eval :: Exp -> NN
eval (Num 0) = O
eval (Num n) = S (eval (Num (n-1)))
eval (Plus n m) = add (eval n) (eval m)
eval (Times n m) = mult (eval n) (eval m)
-- eval (Times (Num 2) (Num 3))
-- eval (Plus (Num 1) (Times (Num 2) (Num 3)))
