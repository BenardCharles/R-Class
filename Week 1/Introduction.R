# R INTRODUCTION
# INTRODUCTION
# R can be downloaded from one of the mirror sites in http://cran.r-project.org/mirrors.html. You should pick your nearest location.

# USING EXTERNAL DATA
# R offers plenty of options for loading external data, including Excel, Minitab and SPSS files.

# VARIABLES
# A variable is a name for a value, such as x, current_temperature, or subject.id. We can create a new variable by assigning a value to it using <-.

weight_kg <- 55

weight_kg

# We can also assign values to a variable with the assignment operator "="

weight_g = 5000

weight_g

# FUNCTIONS
# R functions are invoked by its name, then followed by the parenthesis, and zero or more arguments are parsed.
# The following apply the function c to combine three numeric values into a vector.
c(1, 2, 3)

# COMMENTS
# All text after the pound sign "#" within the same line is considered a comment.

1+1 # this is a comment

# EXTENSION PACKAGE
# Sometimes we need additional functionality beyond those offered by the core R library. 
# In order to install an extension package, you should invoke the install.packages function at the prompt and follow the instruction.

install.packages()

# GETTING HELP
# R provides extensive documentation. For example, entering ?c or help(c) at the prompt gives documentation of the function c in R.

help(c)

?c

# If you are not sure about the name of the function you are looking for, you can perform a fuzzy search with the apropos function.
apropos("nova") 


