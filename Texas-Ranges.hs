-- To make a list containing all the natural numbers from 1 to 20, you can use ..
numbers = [1..20]
-- Will output: [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

-- This will also work with the alphabet
alphabet = ['a'..'z']
-- Will output: [abcdefghijklmnopqrstuvwxyz]

-- You can also specify a step
stepThis = [2,4..20]
-- Will output: [2,4,5,8,10,12,14,16,18,20]

-- Be careful when using floating point numbers in ranges because they are not completely precise

-- To get a specific number of elements, use the operation take
-- The operation cycle will cycle a list infinitely, you must slice it off somewhere
takeThis = take 10 (cycle [1,2,3])
-- Will output: [1,2,3,1,2,3,1,2,3,1]

-- The operation repeat will take an element and produce an inifite list of that element
repeatThis = take 10 (repeat 5)
-- Will output: [5,5,5,5,5,5,5,5,5,5]

-- There is also a replicate function for simplicity
replicateThis = replicate 3 10
-- Will output: [10,10,10]
