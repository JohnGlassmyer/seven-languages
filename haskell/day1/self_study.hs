module Main where
	-- Write a function that takes a list and returns the same list in reverse.
	reverseList :: [t] -> [t]
	reverseList xs = reversePart xs []
	
	reversePart :: [t] -> [t] -> [t]
	reversePart [] sx = sx
	reversePart xs sx = reversePart (tail xs) (head xs : sx)
	
	-- Write a function that builds two-tuples with all possible combinations
	-- with two of the colors black, white, blue, yellow, and red.  Note that you
	-- should include only one of  (black, blue) and (blue, black).
	pickTwos :: [[Char]] -> [([Char], [Char])]
	pickTwos [] = []
	pickTwos (h:t) = pickPairs h t ++ pickTwos t
	
	pickPairs :: [Char] -> [[Char]] -> [([Char], [Char])]
	pickPairs first [] = []
	pickPairs first seconds = [ (first, second) | second <- seconds ]
	
	colors = ["black", "white", "blue", "yellow", "red"]
	colorPairs = pickTwos colors
	
	-- Write a list comprehension to build a childhood multiplication table.
	-- The table would be a list of three-tuples where the first two are integers
	-- from 1-12 and the third is the product of the first two.
	multTable :: [Integer] -> [(Integer, Integer, Integer)]
	multTable numbers = [ (x, y, x * y) | x <- numbers, y <- numbers ]
	
	multTable1to12 = multTable [1..12]
	
	-- Solve the map-coloring problem (Map Coloring, on page 83) using Haskell.
	mapColors = ["red", "green", "blue"]
	mapColorMappings = [(("ms", ms), ("tn", tn), ("al", al), ("ga", ga), ("fl", fl)) | ms <- mapColors, tn <- mapColors, al <- mapColors, ga <- mapColors, fl <- mapColors, ms /= tn, ms /= al, tn /= al, tn /= ga, al /= ga, al /= fl, ga /= fl]
	