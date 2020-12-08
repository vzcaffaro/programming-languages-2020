-- Interpreter for LambdaNat4, version without emap/traverse
-- numbers, conditionals, recursion, lists

module Interpreter where

import AbsLambdaNat
import ErrM
import PrintLambdaNat

import Data.Map ( Map )
import qualified Data.Map as M

execCBN :: Program -> Exp
execCBN (Prog e) = evalCBN e

evalCBN :: Exp -> Exp
evalCBN (EApp e1 e2) = case (evalCBN e1) of
    (EAbs i e1') -> evalCBN (subst i e2 e1')
    e1' -> EApp e1' e2
evalCBN (EIf e1 e2 e3 e4) = if (evalCBN e1) == (evalCBN e2) then evalCBN e3 else evalCBN e4
evalCBN (ELet i e1 e2) = evalCBN (EApp (EAbs i e2) e1) 
evalCBN (ERec i e1 e2) = evalCBN (EApp (EAbs i e2) (EFix (EAbs i e1)))
evalCBN (EFix e) = evalCBN (EApp e (EFix e)) 
evalCBN (ENatS e') = ENatS (evalCBN e')
evalCBN (EMinusOne e) = case (evalCBN e) of
    (ENatS e) -> e
-- the default must be the last line of evalCBN:
evalCBN x = x 

fresh_ :: Exp -> String
fresh_ (EVar (Id i)) = i ++ "0"
fresh_ (EApp e1 e2) = fresh_ e1 ++ fresh_ e2
fresh_ (EAbs (Id i) e) = i ++ fresh_ e
fresh_ _ = "0"

fresh = Id . fresh_

subst :: Id -> Exp -> Exp -> Exp
subst id s (EVar id') | id == id' = s
                      | otherwise = EVar id'
subst id s (EApp e1 e2) = EApp (subst id s e1) (subst id s e2)
subst id s e@(EAbs id' e') = 
    -- to avoid variable capture, we first substitute id' with a fresh name inside the body
    -- of the λ-abstraction, obtaining e''. 
    -- Only then do we proceed to apply substitution of the original s for id in the 
    -- body e''.
    let f = fresh e 
        e'' = subst id' (EVar f) e' in 
        EAbs f $ subst id s e''
subst id s (ENatS e) = ENatS (subst id s e) 
subst id s ENat0 = ENat0 
subst id s (EIf e1 e2 e3 e4) = EIf (subst id s e1) (subst id s e2) (subst id s e3) (subst id s e4)
subst id s (ELet i e1 e2) = subst id s (EApp (EAbs i e1) e2)
subst id s (ERec i e1 e2) = subst id s (EApp (EAbs i e2) (EFix (EAbs i e1)))
subst id s (EFix e) = EFix (subst id s e)
subst id s (EMinusOne e) = EMinusOne (subst id s e)
-- subst id s (EHd e) = EHd (subst id s e)
-- subst id s (ETl e) = ETl (subst id s e)
-- subst id s ENil = ENil
-- subst id s (ECons e l) = ECons (subst id s e) (subst id s l)




