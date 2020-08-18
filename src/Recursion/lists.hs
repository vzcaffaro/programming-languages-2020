evens = [0,2,4,6,8,10]
odds = [1,3,5,7,9,11]
numbers = [0..11]

member x [] = False
member x (y:xs) = if x==y then True else member x xs

map1 f [] = []
map1 f (x:xs) = (f x) : map f xs

add x y = x + y

plus_one xs = map1 (add 1) xs

map2 f [] = []
map2 f [x] = []
map2 f (x:y:ys) = (f x y) : map2 f (y:ys)

mapp f [] = []
mapp f [x] = []
mapp f (x:y:ys) = (f x y) : map2 f ys

zipp [] ys = ys
zipp xs [] = xs
zipp (x:xs) (y:ys) = x:y:zipp xs ys

fib = 0 : 1 : map2 add fib

print_list :: [Integer] -> IO()
print_list [] = return ()
print_list (x:xs) = do
    putStrLn (show x)
    print_list xs





