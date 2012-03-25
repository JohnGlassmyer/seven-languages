module Main where
	-- Write a sort that takes a list and returns a sorted list.
	sort [] = []
	sort [x] = [x]
	sort list = sort (take halfListSize list) :: sort (drop halfListSize list) 
	
	-- Write a sort that takes a list and a function that compares its two argu-
	-- ments and then returns a sorted list.
	
	-- Write a Haskell function to convert a string to a number. The string
	-- should be in the form of $2,345,678.99 and can possibly have leading zeros.
	
	-- Write a function that takes an argument x and returns a lazy sequence
	-- that has every third number, starting with x.  Then, write a function that
	-- includes every fifth number, starting with y.  Combine these functions
	-- through composition to return every eighth number, starting with
	-- x + y.
	
	-- Use a partially applied function to define a function that will return half
	-- of a number and another that will append \n to the end of any string.
	
	-- ====
	-- Here are some more demanding problems if you're looking for something
	-- even more interesting:
	
	-- Write a function to determine the greatest common denominator of two
	-- integers.
	
	-- Create a lazy sequence of prime numbers.
	
	-- Break a long string into individual lines at proper word boundaries.
	
	-- Add line numbers to the previous exercise.
	
	-- To the above exercise, add functions to left, right, and fully justify the
	-- text with spaces (making both margins straight).
	