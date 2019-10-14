# A data frame is a list of vectors which are of equal length. 
# A matrix contains only one type of data, while a data frame accepts different data types (numeric, character, factor, etc.).

# How to create a dataframe
# We can create a data frame by passing the variable a,b,c,d into the data.frame() function. 

# For example: data.frame(df, stringsAsFactors = TRUE)

# Create a, b, c, d variables
a <- c(10,20,30,40)
b <- c('book', 'pen', 'textbook', 'pencil_case')
c <- c(TRUE,FALSE,TRUE,FALSE)
d <- c(2.5, 8, 10, 7)
# Join the variables to create a data frame
df <- data.frame(a,b,c,d)
df

# We can change the column name with the function names()
# Name the data frame
names(df) <- c('ID', 'items', 'store', 'price')
df

# Print the structure
str(df)

# Slice Data Frame

## Select row 1 in column 2
df[1,2]

## Select Rows 1 to 2
df[1:2,]

## Select Columns 1
df[,1]

## Select Rows 1 to 3 and columns 3 to 4
df[1:3, 3:4]

# Slice with columns name
df[, c('ID', 'store')]

# Append a Column to Data Frame

# Create a new vector
quantity <- c(10, 35, 40, 5)

# Add `quantity` to the `df` data frame
df$quantity <- quantity
df

# Note: The number of elements in the vector has to be equal to the no of elements in data frame.
quantity <- c(10, 35, 40)
# Add `quantity` to the `df` data frame
df$quantity <- quantity

# Select a Column of a Data Frame
# Select the column ID
df$ID

# Subset a Data Frame
# We use the subset() function.

# subset(x, condition)
# arguments:
#   - x: data frame used to perform the subset
# - condition: define the conditional statement

# Select price above 5
subset(df, subset = price > 5)

# R inbuilt data frames
data()

# Loading
data(mtcars)
# Print the first 6 rows
head(mtcars, 6)

# If you want learn more about mtcars data sets
?mtcars

# Number of rows (observations)
nrow(mtcars)

# Number of columns (variables)
ncol(mtcars)

# Number of columns and rows
dim(mtcars)

# Data Importation

# EXCEL FILE
library(gdata)                   # load gdata package 
help(read.xls)                   # documentation 
mydata = read.xls("mydata.xls")  # read from first sheet

# Alternatively
library(XLConnect)               # load XLConnect package 
wk = loadWorkbook("mydata.xls") 
df = readWorksheet(wk, sheet="Sheet1")

# SPSS FILE
library(foreign)                 # load the foreign package 
help(read.spss)                  # documentation 
mydata = read.spss("myfile", to.data.frame=TRUE)

# TABLE FILE. Data table can resides in a text file
mydata = read.table("mydata.txt")  # read text file 
mydata                             # print data frame

# CSV - comma separated values
mydata = read.csv("mydata.csv")  # read csv file 
mydata

# Working Directory
getwd()               # get current working directory

setwd("<new path>")   # set working directory

setwd("C:/MyDoc")     # Example

#############################################################################################################################

# ELEMENTARY STATISTICS
# Qualitative Data - also known as categorical.
# if its values belong to a collection of known defined non-overlapping classes. Common examples include student letter grade (A, B, C, D or F)
library(MASS)      # load the MASS package
painters

# The last School column contains the information of school classification of the painters.
painters$School

help(painters)

# Frequency Distribution of Qualitative Data
# The frequency distribution of a data variable is a summary of the data occurrence in a collection of non-overlapping categories.

school = painters$School      # the painter schools
school.freq = table(school)   # apply the table function
school.freq

# We apply the cbind function to print the result in column format.
cbind(school.freq)

# EXERCISE
# 1. Find the frequency distribution of the composition scores in painters.
# 2. Find programmatically the school that has the most painters.

# Relative Frequency Distribution of Qualitative Data
# The relative frequency distribution of a data variable is a summary of the frequency proportion in a collection of non-overlapping categories.
# Relative Frequency = Frequency/Sample Size

school.relfreq = school.freq / nrow(painters)

school.relfreq

# We can print with fewer digits and make it more readable by setting the digits option.
old = options(digits=1)
school.relfreq

# BAR GRAPHS
# A bar graph of a qualitative data sample consists of vertical parallel bars that shows the frequency distribution graphically.

barplot(school.freq, main = "Title", xlab = "X-Label", ylab = "Y-Label",)         # apply the barplot function

# To colorize the bar graph
colors = c("red", "yellow", "green", "violet", "orange", "blue", "pink", "cyan")

barplot(school.freq,         # apply the barplot function
        col=colors)      # set the color palette


# Pie Chart
pie(school.freq)              # apply the pie function

# Category Statistics
# Create a logical index vector for school C.

library(MASS)                 # load the MASS package 
school = painters$School      # the painter schools 
c_school = school == "C"      # the logical index vector

# Find the child data set of painters for school C.
c_painters = painters[c_school, ]  # child data set

# Find the mean composition score of school C
mean(c_painters$Composition)

# Alternatively
# Instead of computing the mean composition score manually for each school, use the tapply function to compute them all at once.
tapply(painters$Composition, painters$School, mean)

# EXERCISE
# 1. Find programmatically the school with the highest composition scores.
# 2. Find the percentage of painters whose color score is equal to or above 14.

# Qualitative Data.- continuous data
# consists of numeric data that support arithmetic operations. 

head(faithful)

# Frequency Distribution of Quantitative Data
# The frequency distribution of a data variable is a summary of the data occurrence in a collection of non-overlapping categories.

duration = faithful$eruptions
range(duration)

# Break the range into non-overlapping sub-intervals by defining a sequence of equal distance break points
breaks = seq(1.5, 5.5, by=0.5)    # half-integer sequence 
breaks

# Classify the eruption durations according to the half-unit-length sub-intervals with cut.
duration.cut = cut(duration, breaks, right=FALSE)

# Compute the frequency of eruptions in each sub-interval with the table function.
duration.freq = table(duration.cut)
duration.freq

# cbind function
cbind(duration.freq)

# Histogram
# A histogram consists of parallel vertical bars that graphically shows the frequency distribution of a quantitative variable

hist(duration,    # apply the hist function 
     +   right=FALSE)    # intervals closed on the left
# To colorize the histogram
colors = c("red", "yellow", "green", "violet", "orange", 
           +   "blue", "pink", "cyan") 
hist(duration,    # apply the hist function 
       right=FALSE,    # intervals closed on the left 
       col=colors,     # set the color palette 
       main="Old Faithful Eruptions", # the main title 
       xlab="Duration minutes")       # x-axis label

# Relative Frequency Distribution of Quantitative Data
duration.relfreq = duration.freq / nrow(faithful)

# The frequency distribution of the eruption variable
duration.relfreq

# We then apply the cbind function to print both the frequency distribution and relative frequency distribution in parallel columns.
old = options(digits=1) 
cbind(duration.freq, duration.relfreq)

# Cumulative Frequency Graph
cumfreq0 = c(0, cumsum(duration.freq)) 
plot(breaks, cumfreq0,            # plot the data 
       main="Old Faithful Eruptions",  # main title 
       xlab="Duration minutes",        # x−axis label 
       ylab="Cumulative eruptions")   # y−axis label 
lines(breaks, cumfreq0)           # join the points


## Scatter Plots - A scatter plot pairs up values of two quantitative variables in a data set and display them as geometric points inside a Cartesian diagram.
waiting = faithful$waiting         # the waiting interval

head(cbind(duration, waiting))

plot(duration, waiting,            # plot the variables 
     xlab="Eruption duration",        # x−axis label 
     ylab="Time waited")              # y−axis label

# It reveals a positive linear relationship between them.

# We can generate a linear regression model of the two variables with the lm function, and then draw a trend line with abline.

abline(lm(waiting ~ duration))

# NUMERICAL MEASURES
# mean - observation variable is a numerical measure of the central location of the data values.
mean(duration)                    # apply the mean function

# Median - observation variable is the value at the middle when the data is sorted in ascending order. 
median(duration)                  # apply the median function

# Quantile
# The first quartile, or lower quartile, is the value that cuts off the first 25% of the data when it is sorted in ascending order.
# The second quartile, or median, is the value that cuts off the first 50%. 
# The third quartile, or upper quartile, is the value that cuts off the first 75%.

quantile(duration)                # apply the quantile function

# BOX PLOT
# The box plot of an observation variable is a graphical representation based on its quartiles, as well as its smallest and largest values. 
# It attempts to provide a visual shape of the data distribution.

boxplot(duration, horizontal=TRUE)  # horizontal box plot
  
# Variance
# The variance is a numerical measure of how the data values is dispersed around the mean.
var(duration)                    # apply the var function

# Standard Deviation
# The standard deviation of an observation variable is the square root of its variance.

sd(duration)                     # apply the sd function

# Covariance
# The covariance of two variables x and y in a data set measures how the two are linearly related.
cov(duration, waiting)          # apply the cov function

# Correlation Coefficient
# The correlation coefficient of two variables in a data set equals to their covariance divided by the product of their individual standard deviations.
cor(duration, waiting)          # apply the cor function 

