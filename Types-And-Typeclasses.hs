-- Unlike Java or Python, Haskell has a type inference
-- If you write a number, Haskell will infer on its own that it is a number
-- The command :t will return the type of the input
-- eg. :t 'a'
-- Will return: 'a' :: Char
-- eg. :t (True, 'a')
-- Will return: (True, 'a') :: (Bool, Char)

-- :: is read as "has type of"
-- Explicit types are always denoted with the first letter in capital case
-- Examining :t "HELLO!" will return [Char] as the [] denotes a list of characters

-- Functions also have types and when writing them, you can give them an explicit type declaration
-- eg. removeNonUppercase :: [Char] -> [Char]
-- This means that it maps from a string to a string
-- [Char] can be used interchangeably with String so you can also write String -> String
-- You don't have to give this function a type declaraction because the compiler can infer by itself but it is good practice

