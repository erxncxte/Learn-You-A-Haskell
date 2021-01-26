lostNumbers = [4,8,15,16,23,42]

-- To put two lists together, you can use the ++ operator
-- eg. [1,2,3,4] ++ [9,10,11,12]
-- Will output: [1,2,3,4,9,10,11,12]
-- The ++ operator will only take two lists

-- When lists get too big, you can use the : operator
-- eg. 'A':" SMALL CAT"
-- Will output: "A SMALL CAT"

-- To index an element from a list, use the !! operator
-- eg. "ERIN IS COOL" !! 5
-- Will output: 'I'

-- Comparing lists can be done using <, <=, > and >=
-- They will be compared in lexicographical order if the items inside the list can be compared

-- To return the first element in the list, use the operator head
-- eg. head [5,4,3,2,1]
-- Will output: 5

-- To return the end of the list, use the operator tail 
-- This will return everything but the 'head' value
-- eg. tail [5,4,3,2,1]
-- Will output: [4,3,2,1]

-- To return the front end of the list, use the init operator
-- This will return everything except the last element
-- eg. init [5,4,3,2,1]
-- Will output: [5,4,3,2]

-- The operator length will return the length of the list
-- eg. length [5,4,3,2,1]
-- Will output: 5

-- The null operator will check if a list is empty and return a boolean
-- eg. null [1,2,3]
-- Will output: False
-- eg. null []
-- Will output: True

-- The reverse operator will reverse a list
-- eg. reverse [5,4,3,2,1]
-- Will output: [1,2,3,4,5]

-- 

