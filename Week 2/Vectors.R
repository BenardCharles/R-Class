# VECTOR
# A vector is a sequence of data elements of the same basic type. Members in a vector are officially called components.
# Nevertheless, we will just call them members in this site.

# Here is a vector containing three numeric values 2, 3 and 5.
c(2, 3, 5)

# And here is a vector of logical values.
c(TRUE, FALSE, TRUE, FALSE, FALSE) 

# A vector can contain character strings.
c("aa", "bb", "cc", "dd", "ee") 

# Incidentally, the number of members in a vector is given by the length function.
length(c("aa", "bb", "cc", "dd", "ee"))

# COMBINING VECTORS
# Vectors can be combined via the function c.
# For examples, the following two vectors n and s are combined into a new vector containing elements from both vectors.
n = c(2, 3, 5)
s = c("aa", "bb", "cc", "dd", "ee")
c(n, s)

# VECTOR ARITHMETICS
# Arithmetic operations of vectors are performed member-by-member, i.e., memberwise.
# For example, suppose we have two vectors a and b.

a = c(1, 3, 5, 7)
b = c(1, 2, 4, 8)

# Then, if we multiply a by 5, we would get a vector with each of its members multiplied by 5.
5 * a

# And if we add a and b together, the sum would be a vector whose members are the sum of the corresponding members from a and b.
a + b

# Similarly for subtraction, multiplication and division, we get new vectors via memberwise operations.
a - b 

a * b

a / b 

# RECYCLING RULE
# If two vectors are of unequal length, the shorter one will be recycled in order to match the longer vector.

u = c(10, 20, 30) 
v = c(1, 2, 3, 4, 5, 6, 7, 8, 9) 
u + v 

# VECTOR INDEX
# We retrieve values in a vector by declaring an index inside a single square bracket "[]" operator.
# Since the vector index is 1-based, we use the index position 3 for retrieving the third member.
s = c("aa", "bb", "cc", "dd", "ee")
s[3]

# NEGATIVE INDEX
# If the index is negative, it would strip the member whose position has the same absolute value as the negative index.
s[-3]

# If an index is out-of-range, a missing value will be reported via the symbol NA.
s[10]

# NUMERIC INDEX VECTOR
# A new vector can be sliced from a given vector with a numeric index vector,
# This consists of member positions of the original vector to be retrieved.
# Here it shows how to retrieve a vector slice containing the second and third members of a given vector s.
s[c(2, 3)]

# The index vector allows duplicate values. Hence the following retrieves a member twice in one operation.
s[c(2, 3, 3)] 

# The index vector can even be out-of-order.
s[c(2, 1, 3)] 

# To produce a vector slice between two indexes, we can use the colon operator ":". 
#  This can be convenient for situations involving large vectors.
s[2:4]

# More information for the colon operator is available in the R documentation.
help(":")

# A new vector can be sliced from a given vector with a logical index vector, which has the same length as the original vector.
# Its members are TRUE if the corresponding members in the original vector are to be included in the slice, and FALSE if otherwise.
# To retrieve the the second and fourth members of s, we define a logical vector L of the same length, and have its second and fourth members set as TRUE.

L = c(FALSE, TRUE, FALSE, TRUE, FALSE)
s[L] 

# The code can be abbreviated into a single line.
s[c(FALSE, TRUE, FALSE, TRUE, FALSE)]

# We can assign names to vector members.
v = c("Mary", "Sue")
v

# We now name the first member as First, and the second as Last.
names(v) = c("First", "Last")
v

# Then we can retrieve the first member by its name.
v["First"]

# Furthermore, we can reverse the order with a character string index vector.
v[c("Last", "First")] 


