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