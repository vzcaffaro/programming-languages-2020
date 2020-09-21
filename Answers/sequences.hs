-- integer sequences

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-2) + fib (n-1)

triangle_number :: Int -> Int
triangle_number 0 = 0
triangle_number n = n + triangle_number (n-1)

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)

sum_of_squares :: Int -> Int
sum_of_squares 0 = 0
sum_of_squares n = n^2 + sum_of_squares (n-1)

