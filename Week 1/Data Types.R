# BASIC DATA TYPES
# There are several basic R data types that are of frequent occurrence in routine R calculations.

# Some of these include:
# 1. Numeric
# 2. Integer
# 3. Complex
# 4. Logical
# 5. Character

# NUMERIC
# Decimal values are called numerics in R. It is the default computational data type.

x = 10.5       # assign a decimal value 
x

class(x)       # print the class name of x 

# Furthermore, even if we assign an integer to a variable k, it is still being saved as a numeric value.
k = 1 
k              # print the value of k 

class(k)       # print the class name of k 

# The fact that k is not an integer can be confirmed with the is.integer function.

is.integer(k)  # is k an integer? 

# INTEGER

# In order to create an integer variable in R, we invoke the integer function.
# We can be assured that y is indeed an integer by applying the is.integer function.

y = as.integer(3)
y              # print the value of y 

class(y)       # print the class name of y 

is.integer(y)  # is y an integer? 

# We can also declare an integer by appending an L suffix.
y = 3L
is.integer(y)  # is y an integer? 

# Incidentally, we can coerce a numeric value into an integer with the as.integer function.
as.integer(3.14)    # coerce a numeric value 

# And we can parse a string for decimal values in much the same way.
as.integer("5.27")  # coerce a decimal string 

# On the other hand, it is erroneous trying to parse a non-decimal string.
as.integer("Joe")   # coerce an non-decimal string 

# Often, it is useful to perform arithmetic on logical values.
# Just like the C language, TRUE has the value 1, while FALSE has value 0.

as.integer(TRUE)    # the numeric value of TRUE 

as.integer(FALSE)   # the numeric value of FALSE 

# COMPLEX
# A complex value in R is defined via the pure imaginary value i.
z = 1 + 2i     # create a complex number
z              # print the value of z 

class(z)       # print the class name of z 

# The following gives an error as −1 is not a complex value.
sqrt(-1)       # square root of −1 

# Instead, we have to use the complex value -1 + 0i.
sqrt(-1+0i)    # square root of −1+0i

# An alternative is to coerce −1 into a complex value.
sqrt(as.complex(-1)) 

# LOGICAL
# A logical value is often created via comparison between variables.
x = 1; y = 2   # sample values 

z = x > y      # is x larger than y? 
z              # print the logical value

class(z)       # print the class name of z 

# Standard logical operations are "&" (and), "|" (or), and "!" (negation).

u = TRUE; v = FALSE 
u & v          # u AND v 

u | v          # u OR v 

!u             # negation of u 

# Further details and related logical operations can be found in the R documentation.
help("&")

# CHARACTER
# A character object is used to represent string values in R. We convert objects into character values with the as.character() function:
x = as.character(3.14) 

x              # print the character string 

class(x)       # print the class name of x 

# Two character values can be concatenated with the paste function.
fname = "Joe"; lname ="Smith" 
paste(fname, lname) 

# However, it is often more convenient to create a readable string with the sprintf function, which has a C language syntax.
sprintf("%s has %d dollars", "Sam", 100) 

# To extract a substring, we apply the substr function. 
# Here is an example showing how to extract the substring between the third and twelfth positions in a string.

substr("Mary has a little lamb.", start=3, stop=12) 

# And to replace the first occurrence of the word "little" by another word "big" in the string, we apply the sub function.
sub("little", "big", "Mary has a little lamb.")

# More functions for string manipulation can be found in the R documentation.
help("sub")
