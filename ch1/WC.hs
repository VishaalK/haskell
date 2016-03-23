-- file: ch01/WC.hs
-- lines beginning with "--" are comments.

main = interact charCount
    where charCount input = show (length input) ++ "\n"
