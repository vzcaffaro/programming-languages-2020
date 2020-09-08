select_odds  [] = []
select_odds [x] = [x]
select_odds (x1:x2:xs) = x1:select_odds xs

select_evens [] = []
select_evens [x] = []
select_evens (x1:x2:xs) = x2:select_evens xs

member x [] = False
member x (y:xs) = if x==y then True else member x xs

append [] ys = ys
append (x:xs) ys = x:(append xs ys)

revert [] = []
revert (x:xs) = append (revert xs) [x]

less_equal [] [] = True
less_equal (x:xs) (y:ys) = (x <= y) && less_equal xs ys
