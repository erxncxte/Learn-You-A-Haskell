-- Tuples are like lists because they are a way to store several values into a single value
-- Tuples can contain a combination of several types of values
-- Say to represent a two-dimensional vector, you could use a list for the vectors
-- That could look something like [[1,2],[8,11],[4,5]]
-- If we wanted to change it to [[1,2],[8,11,5],[4,5]]
-- Haskell has no problem with this but it kind of doesn't make sense
-- A tuple of size two (called a pair) is its own type, which means that a list can't have a couple of pairs and then a triple
-- So instead of using square brackets, you use parentheses
-- [(1,2),(8,11),(4,5)]
-- If we tried to make the shape [(1,2),(8,11,5),(4,5)], we would get an error because we tried using a pair and triple in the same list

christoperWalken = ("Christoper", "Walken", 55)

-- Use tuples when you know in advance how many components some piece of data should have
-- Similar to lists, tuples can be compared with each other if their components can be compared

-- The function 'fst' takes a pair and returns its first component
-- eg. fst (8, 11)
-- Will return: 8

-- The function 'snd' takes a pair and returns its second component
-- eg. snd ("Wow", False)
-- Will return: False

-- The function 'zip' will take two lists and join them together into one list by joining the matching elements into pairs
-- eg. zip [1 .. 5] ["one", "two", "three", "four", "five"]
-- Will return: [(1, "one"), (2, "two"), (3, "three"), (4, "four"), (5, "five")]
-- If the lengths of the lists don't match, the longer list will get cut off to match the length of the shorter one
-- You can also zip finite lists with infinite lists

-- Consider this problem.
-- Which right triangle that has integers for all sides and all sides equal to or smaller than 10 has a perimeter of 24?
-- First let's try generating all triangles with sides equal to or smaller than 10
-- let triangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10] ]
-- Now we can add a condition that they all have to be right angle triangles. We will also add a consideration that b isn't larger than the hypotenuse and that a isn't bigger than b
-- let rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]
-- From here we can also add a condition that the perimeter must be 24
-- let rightAngleTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]
-- Will output: [(6,8,10)]