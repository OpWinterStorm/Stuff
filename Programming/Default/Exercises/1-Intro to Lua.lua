-- this is a comment! :)
-- comments are not evaluated ever

-- 1. Variables:
-- 1.1 Assign variables with "="
a = 32 -- number 
string = "this is a string" -- string
otherString = "this is a another string" -- also string
boolean = true -- boolean
otherBoolean = false
otherOtherBoolean = nil

-- 1.2 Tables
books = { -- Tables store information
	"Oliver Twist",
	"A Tale of Two Cities",
	"David Copperfield",
	"A Christmas Story",
}

-- Length of table: #<name of table>
length = #books -- table.len( books )

-- Accessing table information
--- <table name>[<table index>]
book1 = books[1] -- Oliver Twist
book3 = books[3] -- A Christmas Story

-- 1.3 For loops
--- 3 types of for-loop
---- for i (index, based
--[[
	for <variable name> = <number>, <max number>, [iterator = 1] do
		...
	 end
]]
for index = 1, 10, 2 do -- goes up 1,3,5,7,9
	print( index, math.sqrt( index )) -- prints it
end

print()
for bookIndex = 1, #books do -- the variable can be accessed inside of the for-loop and increases after each evaluation.  #books gets # of books in table
	currentBook = books[bookIndex]
	print( books[bookIndex], currentBook )
end

---- for ipairs
--[[
	for <current index>, <variable name> in ipairs( <table name> ) do
		...
	end
]]
print()
for bookIndex, currentBook in ipairs( books ) do -- ipairs = integer pairs
	print( books[bookIndex], currentBook )
end
-- starts at lowet number index, increases by 1 until it reaches a define value.
-- ipairs = for loop for <index> = i, #<table>, 1 do <variable> = <table>[index]

---- for pairs