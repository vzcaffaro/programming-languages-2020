-- an interpreter of abstract syntax in successor numbers

-- successor numbers
data NN = O | S NN
    deriving (Eq,Show)

-- addition
add :: NN -> NN -> NN
add O n = n                         -- 0 + n = n
add (S n) m = S (add n m)           -- (1 + n) + m = 1 + (n + m)
-- add (S O) (S (S O))

-- multiplication
mult :: NN -> NN -> NN
mult O n = O                        -- 0 * n = 0
mult (S O) n = n                    -- 1 * n = n
mult (S n) m = add m (mult n m)     -- (1 + n) * m = m + (n * m)
-- mult (S (S O)) (S (S ( S O)))

-- subtraction
subtr :: NN -> NN -> NN
subtr O n = O                       -- 0 - n = 0 (because we do not do negative numbers here)
subtr n O = n                       -- n - 0 = 0 
subtr (S n) (S m) = subtr n m       -- (1 + n) - (1 + m) = n - m
-- subtr (S (S O)) (S O)

-- less
less :: NN -> NN -> Bool
less n O = False                    -- n cannot be less than O
less O n = True                     -- we know n cannot be O in this case
less (S n) (S m) = less n m         -- similar to subtr

-- division
divi :: NN -> NN -> NN
divi n m  = if n==m then S O 
                    else if less n m then O 
                                     else add (S O) (divi (subtr n m) m) -- n/m = 1 + (n-m)/m
-- divi (S(S(S(S(S O))))) (S(S O))

-- a language for arithmetic expressions
data Exp = Num Int | Plus Exp Exp | Times Exp Exp | Minus Exp Exp | Divide Exp Exp

eval :: Exp -> NN
eval (Num 0) = O
eval (Num n) = S (eval (Num (n-1)))
eval (Plus n m) = add (eval n) (eval m)
eval (Times n m) = mult (eval n) (eval m)
eval (Minus n m) = subtr (eval n) (eval m)
eval (Divide n m) = divi (eval n) (eval m)
-- eval (Times (Num 2) (Num 3))
-- eval (Minus (Num 5) (Num 3))
-- eval (Divide (Num 5) (Num 2))
-- eval (Plus (Num 1) (Times (Num 2) (Num 3)))
