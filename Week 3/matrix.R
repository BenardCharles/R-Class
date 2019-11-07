# MATRIX

# A matrix is a collection of data elements arranged in a two-dimensional rectangular layout.
# We reproduce a memory representation of the matrix in R with the matrix function. The data elements must be of the same basic type.

A = matrix( 
c(2, 4, 3, 1, 5, 7), # the data elements 
nrow=2,              # number of rows 
ncol=3,              # number of columns 
byrow = TRUE)        # fill matrix by rows 

A   # print the matrix

# An element at the mth row, nth column of A can be accessed by the expression A[m, n].
A[2, 3]      # element at 2nd row, 3rd column

# The entire mth row A can be extracted as A[m, ].
A[2, ]       # the 2nd row

# Similarly, the entire nth column A can be extracted as A[ ,n].
A[ ,3]       # the 3rd column

# We can also extract more than one rows or columns at a time.
A[ ,c(1,3)]  # the 1st and 3rd columns

# If we assign names to the rows and columns of the matrix, than we can access the elements by names.
dimnames(A) = list( 
c("row1", "row2"),         # row names 
c("col1", "col2", "col3")) # column names

A   # print A 

A["row2", "col3"] # element at 2nd row, 3rd column

# Matrix Construction
# There are various ways to construct a matrix. 
# When we construct a matrix directly with data elements, the matrix content is filled along the column orientation by default.
# For example, in the following code snippet, the content of B is filled along the columns consecutively.

B = matrix( 
c(2, 4, 3, 1, 5, 7), 
nrow=3, 
ncol=2) 

B   # B has 3 rows and 2 columns

# Tran
