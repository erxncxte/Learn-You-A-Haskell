-- List comprehension is very similar to set comprehension in mathematics

listComp = [x*2 | x <- [1..10]]
-- Will output: [2,4,6,8,10,12,14,16,18,20]

-- You can add a predicate (condition) by separating it by a comma after the binding parts
-- This predicate asks for elements that are greater than or equal to 12 after being doubled
predicate = [x*2 | x <- [1..10], x*2 >= 12]
-- Will output: [12,14,16,18,20]

-- What if you wanted all numbers from 50 to 100 whose remainder when divide with the number 7 is 3?
thisPredicate = [x | x <- [50..100], x 'mod' 7 == 3]
-- Will output: [52,59,66,73,80,87,94]

-- Using a predicate to get a specific outcome from a list is called filtering
boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
-- This predicate replaces each odd number greater than 10 with "BANG!"
-- and each odd number that is less than 10 with "BOOM!"
-- eg. boomBangs [7..13]
-- Will output: ["BOOM!","BOOM!","BANG!","BANG!"]

-- To get all the numbers from 10 to 20 that are not 13, 15 or 19
-- eg. [ x | x <- [10..20], x /= 13, x /= 15, x /= 19]
-- Will output: [10,11,12,14,16,17,18,20]

-- Not only can you have multiple predicates in lists, but you can draw from several lists
-- eg. [ x*y | x <- [2,5,10], y <- [8,10,11]]
-- Will output: [16,20,22,40,50,55,80,100,110]

-- You can also output all the possible products that are more than 50
-- eg. [ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]
-- Will output: [55,80,100,110]

-- Lists of words can also be manipulated
nouns = ["hobo","frog","pope"]
adjectives = ["lazy","grouchy","scheming"]
words = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]
-- Will output: ["lazy hobo","lazy frog","lazy pope","grouchy hobo","grouchy frog","grouchy pope","scheming hobo","scheming frog","scheming pope"]

length' xs = sum [1 | _ <- xs]
-- _ means that you don't care what is drawn from the list so instead of writing a variable name that will never be used again, you just write _
-- This function replaces every element of the list with 1 and then sums that up, resulting in the length of the list

-- You can use list comprehensions to process and produce strings
-- This function will take a string and remove everything except uppercase letters from it
removeNonUppercase st = [ c | c <- st, c 'elem' ['A'..'Z']]
-- eg. removeNonUppercase "IdontLIKEFROGS"
-- Will output: "ILIKEFROGS"

-- Nested list comprehensions are also possible if you're operating on lists that contain lists
-- Here we can remove all odd numbers without flattening the list
-- eg. xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,3,2,1,6,3,1,3,2,3,6]]
-- [ [ x | x <- xs, even x ] | xs <- xxs]
-- Will output: [[2,2,4],[2,4,6,8],[2,4,2,6,2,6]]
