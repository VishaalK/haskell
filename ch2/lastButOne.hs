lastButOne xs = if length xs <= 1
                then -1 
                else (head (drop (length xs - 2) xs))
