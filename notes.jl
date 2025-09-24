##### Values and strings
# δ = 1            Basic assignment that prints 1. Can use basically any symbols.
# x = 1 ;          Semicolon hides output
# x,y,z = 1,2,3 ;  Assign multiple values at once.

# Strings are created with "quotes", whereas characters are just singular characters 'a'.
# interpolate expressions into strings using $(expression) e.g. $(π - z) would print 0.141593...


##### Basic math operations
# math operators are +,-,/,*,^ etc; pretty standard.
# also have equals variants e.g. +=, -=, that apply the operation to the number. x += 3 is x = x+3

# numbers multiply to letters without * as long as LHS, e.g. 10x doesnt need to be 10*x

############################ TYPE BASICS ############################
# We can identify the type of a variable using typeof().
# We have floats, integers, strings.

########################### Collection data structures ##############
# We index with collection[index], so x[i].
# Collection index starts at 1.

##### Tuples
# Tuples are immutable ordered collections of any elements of any type.
# Good for storing little collections of different information types.
# TupleCollection = ("String", π, 'δ')

##### Dictionaries
# Dictionaries are mutable unordered collections.
# Typically used to store related information of the same type, e.g. name and phone number.
# Dictionary = Dict("Mason" => "01234 567890", "Poppy" => "09876 543210")
# Then Dictionary("Mason") would return his number, Dictionary would return the entire book.
# As it is mutable, we can add new entries without copying/changing the data structure, of the same types.

##### Named tuples
# Tuple where you name each variable, e.g. parameters = (phi = 1, mu = 2, delta = 45)
# parameters.phi returns 1.

########################### Arrays #################################
# Arrays, which can be vectors or matrices (of dimension 1 or 2), are mutable ordered structures containing the same type.
# Typical array functionality; 
# The ":" operator selects all elements in that dimension, i.e. array(1,:) selects the entire first row of a matrix.
# "end" can be used as an index in an array.

## Ranges
# Shorthand to define an equally-spaced vector array; a:b:c
# Starts at a, steps size b, until the largest value that doesnt exceed c.
# Can also be used for other ordered things, such as letters e.g. 'a':'z'.

# Ranges do NOT store elements in memory, unlike vectors. We can use collect(range) to collect as a vector.


########################## Loops ################################
##### for loops!

# for variable(s) in iterable
#   loop body
# end

# The nature of the variable depends on the iterable; dictionaries, for example, iterate in "pairs"; we could do:
# for pair in Dictionary
#   println(pair)
# end
# and it would effectively just return the dictionary.
# for (key,val) in Dictionary
#   println("The value of $key is $val")
# end
# would return a nice little set of strings telling you the information!

## enumerate
# An iterator that yields (i, x) where i is a counter starting at 1, and x is the i th value from the given iterator
# useful to form useable indexes corresponding to vector of values.
# for (index,value) in enumerate(vector)
#     println("The $index value in vector is $value")
# end

##### while loops!

# while boolean = true
#    loop body
# end

##### if statements

# if condition 2
#   outcome 1
# elseif condition 2
#   outcome 2
# else
#   outcome else
# end

##### ternary operator
# special form of the if statement; one of "if", "else".
# condition ? *if_true* : *if_false*

##### break and continue, logical short-circuiting
# Consider this block of code.

# N = 1:100
# for n in N
#     isodd(n) && continue
#     println(n)
#     n > 10 && break
# end

# This prints 2,4,6,8,10,12.
# && and || are logical operators, but also short-circuit evaluators.
# condition && outcome executes outcome iff condition is true
# condition || outcome executes outcome iff condition is false
# continue skips an iteration.
# break ends the iteration and loop.

# Break is almost like applying a while-loop condition to a for-loop?!


##### List comprehension (conveniently making a vector)
# expression(a) for a in collection if condition(a)
# e.g. a^2 for a in 1:10 if iseven(a) 
# gives a 5 element vector of 4,16,36,64,100.


############################ functions! #############
# Two ways to do it; the longer form "function, return, end", or an anonymous/lambda function "f(x) = x^2"
# In our function, we can define multiple types of argument.
# function(pos_arg1, pos_arg2 = 3 ; named_arg = 3)
# "positional" arguments, to the left of the semicolon, are defined in order.
# "named" arguments, to the right of the semicolon, are only defined by name; never by order.
# arguments can be assigned "default" values.