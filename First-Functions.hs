doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmall Number x = if x > 100
                        then x
                        else x*2

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1
-- Adding a ' denotes a strict version of a function or a slightly modified version


conanO'Brien = "It's a-me, Conan O'Brien!"
-- Functions can't begin with uppercase letters
-- This is a definition because there are no parameters
