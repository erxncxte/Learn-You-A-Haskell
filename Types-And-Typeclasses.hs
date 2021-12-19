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

-- Simple function that adds three integers together
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z
-- The return type is the last item and the parameters are the first three
-- If you are not sure which type declaration to give your function, just write it without one and check it with :t

-- Int is bounded, on 32-bit machines, the max is 2147483647 and min is -2147483648
-- Integer also represents integers but is not bounded. Int is more efficient though
factorial :: Integer -> Integer
factorial n = product[1..n]
factorial 50
-- Will output: 30414093201713378043612608166064768844377641568960512000000000000

-- Float is a real floating point with single precision
circumference :: Float -> Float
circumference r = 2 * pi * r
circumference 4.0
-- Will output: 25.132742

-- Double is a real floating point with more decimal places
-- Bool is true or false
-- Char is a character, [Char] can represent a string
-- An empty tuple () is also a type which only has the single value ()

-- If we check the type of head function with :t
:t head
-- Will output: head :: [a] -> a
-- Because its not capital, its a type variable
-- Functions that have type variables are called polymorphic functions
-- The type declaration of head states that it takes a list of any type and returns one element of that type
