lastButOne :: [a] -> Maybe a
lastButOne xs = if length xs <= 1
                then Nothing
                else Just (head (drop (length xs - 2) xs))
