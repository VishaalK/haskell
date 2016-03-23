-- modExp base power modulo -> return
modExp :: Integer -> Integer -> Integer -> Integer
modExp a x n = if x == 0  then 1
                else if x == 1 then (a `mod` n) 
                else if even x then modExp (a*a `mod` n) (x `div` 2) n
                else (modExp (a*a `mod` n) (x `div` 2) n ) * a

main = print (modExp 2 5 17)  
