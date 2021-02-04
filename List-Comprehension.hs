-- List comprehension is very similar to set comprehension in mathematics

listComp = [x*2 | x <- [1..10]]
-- Will output: [2,4,6,8,10,12,14,16,18,20]

-- You can add a predicate (condition) by separating it by a comma after the binding parts
-- This predicate asks for elements that are greater than or equal to 12 after being doubled
predicate = [x*2 | x <- [1..10], x*2 >= 12]
-- Will output: [12,14,16,18,20]



