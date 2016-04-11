-- TODO: turn this into guards and check for negative numbers!
elementAt :: [a] -> Integer -> Maybe a
elementAt _ 0 = Nothing
elementAt [] _ = Nothing
elementAt (xs) 1 = Just (head xs)
elementAt (x:xs) n = 
    case elementAt xs (n-1) of
        Just ans -> Just ans 
        Nothing  -> Nothing

length' :: [a] -> Int
length' [ ] = 0
length' [x] = 1
length' (x:xs) = 1 + length' xs

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = (reverse xs) ++ [x]  

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = True
isPalindrome [x] = True
isPalindrome (x:xs) = (x == (last xs)) && (isPalindrome xs) 
