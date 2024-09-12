##                                        VARIABLE ASSIGNMENT
x <- 10
y = 10        # = doesn't work in console, only in RStudio
assign('z', 10)
x == y
y == z
x = y = z = 55
100 -> x
y <- z <- x -> a
# predefined constants letters, pi, LETTERS, month.name, month.abb
(l = letters)
(l1 = LETTERS)
(n = pi)
(mn = month.name)
(ma = month.abb)
##                                          BASIC DATA TYPES
# numeric class with type double
x <- 10
y = 10
x == y
x
class(x)
typeof(x)
# integer class with type integer
x1 <- as.integer(10)
x1
class(x1)
typeof(x1)
# integer class with type integer
x2 = as.integer('John')
x2
class(x2)
typeof(x2)
is.integer(x)
# complex class with type complex
x3 = 5+4i
x3
class(x3)
typeof(x3)
# logical class with type logical
x4 = TRUE # x4 = T
x4
class(x4)
typeof(x4)
# character class with type character
x5 = 'John'
x5
class(x5)
typeof(x5)
##                                   LOGICAL OPERATORS
x = T
y = F
x & y
x | y
!x
10 & 22
0 & 10
!10
##                                         sEQUENCES
(x <- 1:10)
(x <- 1:10*2)
(x <- 1:10-1)
x <- 5
1:x
1:x-1
1:(x-1)
(x <- seq(1, 5))
(x <- seq(5))
(x <- seq(30, 2, -2))      # seq(from=30, to=2, by=-2)
(x <- seq(1, 2, length=10))
##                                       rep function
(x <- rep(1, 5))
x <- 1:3
(y <- rep(x, 5))
(y <- rep(x, each=5)) 
?rep
##                                     if, if-else, else if, ifelse
x <- 0
if (x > 0){
  print('Positive number')
} else if(x<0){
  print('Negative number')
} else{
  print('Zero number')
}
x = 56
ifelse(x%%2, 'Odd number', 'Even number')
##                                    for, while, repeat, break, next
x = letters[1:5]
for(i in x)print(i) # for single statement no need to use {}
sum = 0
for(i in 1:5){
  sum = sum + i
  print(sum)
}
x <- 0
while(x< 10){
  print(x)
  x = x + 2
}
i <- 1
repeat {
  if(i>5)break
  print(i)
  i = i+1
}
i <- 1
for (i in 1:10){
  if (!(i%%2))next
  print(i)
}
##                                          functions
sum1 = function(a, b){
  c = a+b
  return (c)
}
# inline function
sum2 = function(a, b) (a+b)
sum1(5, 4)
sum2(5, 4)

first = function(x, y, z) (x)
first(45, 20, 60)
first(y=20, z=100, x=88)

sum3 = function(x=50, y, z=20) (x+y+z)
sum3(100)
sum3(y=100)
#   return multiple values
fun1 = function(x, y) (list('sum'=x+y, 'mul'=x*y))
fun2 = function(x, y) (c(x+y, x*y))
fun1(10, 20)
fun2(10, 20)
fun2(10, 20)[1]
##                                            vectors     
(x1 = 1:6)
length(x1)
x1[-5]
x1[-5] = 10
x1
(x2 = c(1, 2, 3, 4, 5, 6))
(x3 = seq(6))
(x4 = c(x1, x3))
(x5 = vector('numeric', length=5))
(x5 = vector('character', length=5))
x = c(10, 20, 30, 40, 50, 60)
y1 = c(T, F, F, F, T, T)
y2 = c(T, F, T)
x[y1]
x[y2]
##                                      matching operator - %in%
x = c(10, 20, 30, 40)
40 %in% x
41 %in% x
y = seq(10)
y %in% x
##                                          vector arithmetic
x = c(2, 44, -8, 6)
x+2
sqrt(x)
y <- c(5,1,2)
x+y
y <- c(5,1,2, 4)
x+y
x*y
x %*% y              # dot product
x %o% y              # outer product
tcrossprod(x, y)     # outer product
sum(x)
prod(x)
rev(x)
x
sort(x, F)
x
##                                         vector coercion
(x <- c(10, 'John', 20.35))
(x <- c(10, TRUE))
(x <- c('John', TRUE))
(x <- 0:5)
class(x)
as.logical(x)
as.character(x)
x <- c('John', 'Jack', 'Jim')
as.logical(x)
##                                           Logical vector
(x <- c(10,45,30,50,35))
(y <- x > 30 & x < 40)
(y <- c(20, 15, 25, 65, 5))
x < y
which(x > 30)
which(x<y)
x[which(x<y)]
##                                             Factors
(x <- factor(c('Male', 'Female', 'Female', 'Male', 'Male')))
table(x)
##                                    Mathematical functions in R
(x <- c(4.258, -3.853, 5.147, 9.025))
abs(x)
ceiling(x)
floor(x)
round(x, 2)
round(x)  # rounds to the nearest
trunc(x)  # simply removes the decimal digits
x <- c(9, 16, 25, 36, 49, 64)
sqrt(x)
exp(x)
log(x)
log(x, 2)
log2(x)
log10(x)
x <- c(4, 3, 6, -5)  # NaN - Not a number
factorial(x)
##                                       Random numbers in R
(x <- rnorm(100))
hist(x)
(one_std_around_mean = pnorm(21, mean=20, sd=1)-pnorm(19, mean=20, sd=1))

##                                          Matrices in R 
(m <- matrix(nrow=2,ncol=3))    #  Matrices are 2 dimensional vectors
dim(m)                          # NA - Not Available
(m <- matrix(c(1, 2, 3, 4, 5, 6)))
(m <- matrix(c(1,2,3,4,5,6), nrow=2, byrow=T))  # by default matrix is created according to columns
typeof(m)
(m <- c(1,2,3,4,5,6))
dim(m) <- c(2,3)
m
(m <- matrix(1:6, nrow=2, byrow=T))
(m <- matrix(c(2,3,4,0,1,2,-1,-2,-3,5,4,3), nrow=4, byrow=T))
dim(m)
c(nrow(m), ncol(m), length(m))
##                                        Matrix diag() function
(m1 = matrix(4, 3, 3))
(m2 <- diag(5, 3, 4))
(m3 <- diag(1:3, 4, 3))
(m4 <- diag(c(7, 88, 95)))
diag(m1)
diag(m4)
##                                     Matrix naming rows and columns
(m <- matrix(c(2,3,4,0,1,2,-1,-3,-5), nrow=3, byrow=T))
m[3,1]
rownames(m) = 1:3
colnames(m) = LETTERS[1:3]
m
c(m[3, 'A'], m[3, 1])    
##                                        Matrix indexing
(A <- matrix(c(2,3,4,0,1,2,-1,-3,-5, 100, 200, 300), nrow=4, byrow=T))
A[, ncol(m)]  # gives last column
A[-2,]        # eliminating 2-nd row
A[,-2]        # eliminating 2-nd column
A[2, 3] = 10
A
A[-3, -2]
A[c(1,3),]
(A = A[,-2])   # deleting 2-nd column
diag(A)
A[5,5] = 123  # error cant be accessed 

##                                     Matrix rbind() & cbind()  functions
(A <- matrix(c(2,3,4,0,1,2,-1,-3,-5, 100, 200, 300), nrow=4, byrow=T))
(B <- rbind(A, c(221, 222, 223)))
(B <- matrix(c(311, 312, 313), nrow=1))
(C <- rbind(A,B))
(C <- rbind(B, A))
(B <- cbind(A, c(221, 222, 223, 224)))
(B <- cbind(matrix(c(221, 222, 223, 224)), A))
(B <- cbind(A, A))
##                                        Matrix operations
vec = 1:9
(A <- matrix(1:9, nrow=3, byrow=T))
(B <- matrix(1:9*10, nrow=3, byrow=T))
A+B
A*B
A %*% B
list(B/A, A/B)
t(A)   # transpose of A
solve(A)  # inverse of A
(mat = matrix(1:4, nrow=2))
solve(mat) %*% mat # A*A_inverse = I has to be identity matrix

##                                     Matrix specific functions
(A = matrix(1:9, 3,3))
rowSums(A)
colSums(A)
rowMeans(A)
colMeans(A)
apply(A, 1, sum)
apply(A, 2, sum)
##                                             Lists
# Elements of list need not to be of same type
(x <- list(10, 'John', T))
x[2]
rollno <- c(101, 102, 103)
snames <- c('john', 'Bob', 'Alice')
marks <- c(78.25, 59.45, 63.85)
(students = list(rollno, snames, marks))
(students <- list(c(101, 102), c('Bob'), c(78.25, 59.45, 63.85)))
##                                        List indexing
students[1]  # will return list
students[[1]]  # will return 1st element of the list
students
students[[1]][2] = 555 # changing elements of list
students
##                                    Lists subset operator
rollno <- c(101, 102, 103)
snames <- c('john', 'Bob', 'Alice')
marks <- c(78.25, 59.45, 63.85)
(students = list('id'=rollno, 'name'=snames, 'scores'=marks))
students$scores
students[[3]]
students[c(1, 3)]
students[c('id', 'scores')]
##                                       Concatenation
rollno <- c(101, 102, 103)
snames <- c('john', 'Bob', 'Alice')
marks <- c(78.25, 59.45, 63.85)
(students = list('id'=rollno, 'name'=snames, 'scores'=marks))
age <- list(c(19, 20, 26))
married <- list(c(F, F, T))
(students = c(students, age, married))

##                                          Dataframes
id <- c(101, 102,103)
name <- c("Bob", 'Alice', 'John')
marks <- c(78.25, 59.45, 63.85)
(students = data.frame(id,name,marks))
(student_list = list(id,name,marks))
##                                        Dataframe indexing
students[2:3,]
students[,1]
students[2:3,1:2]
students[-2,-3]
students[2]  # single index just refers to a column and returns a data.frame
students[c(1,3),c(1,3)]
students[[3]] # returns as a vector
students[[3]][1]
students$marks  # returns as a vector
students
students[[3]][2] = 500
students
##                                       Dataframes subset() function
id <- c(101, 102,103)
name <- c("Bob", 'Alice', 'John')
marks <- c(78.25, 59.45, 63.85)
(students = data.frame(id,name,marks))
(report <- subset(students, marks>60 & id < 103))
(report <- subset(students, marks>60, select=c(name, marks)))
(report <- subset(students, marks>60, select=id:marks))
(report <- subset(students, marks>60, select=-name))

##                                     Dataframes rbind() & cbind()
students
(students <- rbind(students, data.frame(id=104, name='Jack', marks=45.85)))
(students <- cbind(students, age=c(22, 25, 33, 30)))

##                                     Dataframes EDIT() function
id <- c(101, 102,103)
name <- c("Bob", 'Alice', 'John')
marks <- c(78.25, 59.45, 63.85)
(students = data.frame(id,name,marks))
(students_table = edit(students))

##                                      Dealing with missing Data
(x <- c(100,2, NA, 7, NaN))
is.na(x)
is.nan(x)
(x <- c(100,2, NA, 7, NA))
(y = is.na(x))
x[!y]   # avoiding missing values

id = 101:105
temperature = c(25.8,34.2,NA,27.4,20.5)
wind = c(78,59,63,40,68)
humidity = c(25,45,85,NA,61)
(weather = data.frame(id, temperature, wind, humidity))
(weatherNA = complete.cases(weather))
weather[weatherNA, ]  # avoiding rows that have NA(missing values)

##                                     Importing data
# text files
(mydata <- read.table('data.txt'))
(mydata <- read.table('data.txt', header=TRUE))
(mydata <- read.table('data.txt', header=TRUE, nrows = 5))
# csv files
(mydata <- read.csv('sample.csv')) # header=TRUE by default
# RDS files
(mydata <- readRDS('file_name.rds'))
# internet files
url.show('http://softlect.in/datasets/sbuxPrices.csv')
(mydata <- read.table('http://softlect.in/datasets/sbuxPrices.csv', sep=',', header=TRUE))
# from clipboard
(mydata <- read.table('clipboard', header=TRUE, sep=',')) # ctrl+c

#                                     Exporting data to csv files
id <- c(101, 102,103)
name <- c("Bob", 'Alice', 'John')
marks <- c(78.25, 59.45, 63.85)
(students = data.frame(id,name,marks))
write.csv(students,file='students.csv')
##                                             dplyr package
install.packages('dplyr')  # install the package
library(dplyr)   # load the package
##                                        dplyr select() function
library(dplyr)
(mydata = read.csv('murders.csv'))
dim(mydata)
str(mydata)
mydata[c(1,4,6)]
names(mydata)
(mysubdata <- select(mydata, state:population))
(mysubdata <- select(mydata, state, population, murders, gunmurders))
(mysubdata <- select(mydata, -abb))
(mysubdata <- select(mydata, -c(abb, region, population, gunownership)))

##                                        dplyr filter() function
library(dplyr)
(mydata = read.csv('murders.csv'))
names(mydata)
(mysubdata = filter(mydata, murders>200 & population<10000000))
(mysubdatamurders <- select(mysubdata, state,population, murders))

##                                        dplyr arrange() function
library(dplyr)
(mydata = read.csv('murders.csv'))
names(mydata)
mysubdata = arrange(mydata, desc(murders)) # desc makes it in descending order
mysubdatamurders <- select(mysubdata, state, population, murders)
#                                head & tail 
head(mysubdatamurders, 5) # first 5 rows
tail(mysubdatamurders, 5) # last 5 rows
##                                        dplyr rename() function
library(dplyr)
(mydata = read.csv('murders.csv'))
names(mydata)
mydata <- rename(mydata, abbreviation=abb, homicide=murders)
names(mydata)
(mysubdata <- select(mydata, state, abbreviation, homicide))

##                                        dplyr mutate() function                             
library(dplyr)
(mydata = read.csv('murders.csv'))
names(mydata)
mysubdata = mutate(mydata, ratio=population/murders)
head(mysubdata)
arrange(select(mysubdata, state, ratio), ratio)
#  transmute() function
mysubdata = transmute(mydata, ratio=population/murders)
head(mysubdata)
##                                       dplyr group_by() function
library(dplyr)
(mydata = read.csv('murders.csv'))
names(mydata)
(mysubdata = group_by(mydata, region))
summarise(mysubdata, mean(murders))
##                                          Pipe operator %>%
library(dplyr)
(mydata = read.csv('murders.csv'))
names(mydata)
mysubdata = arrange(mydata, desc(murders))
mysubdatamurders = select(mysubdata, state, murders)
mysubdatamurders
# the result of the first function is treated as the first argument of the second function
arrange(mydata, desc(murders)) %>% select(state, murders) %>% head()

##                                           Bar graphs
library(dplyr)
mydata = read.csv('murders.csv')
mysubdata = select(mydata, state, population, murders)
barplot(mysubdata$population,
        xlab='states',
        ylab='population',
        main='States vs Population',
        names.arg=mysubdata$state,
        col='blue')
myhighdata = arrange(mydata, desc(murders)) %>% select(state, population, murders) %>% head(5)
barplot(myhighdata$murders,
        xlab='states',
        ylab='murders',
        main='States vs Murders',
        names.arg=myhighdata$state,
        col='blue')
##                                    Horizontal bar graphs
library(dplyr)
mydata = read.csv('murdersmini.csv')
myseldata = select(mydata, state, murders)
barplot(myseldata$murders, horiz=T,
        xlab='Murders',
        ylab='States',
        main='State vs Murders',
        col='blue',
        names.arg=myseldata$state)
##                                    Stacked bar plots          
library(dplyr)
mydata = read.csv('murdersmini.csv')
myseldata = mutate(mydata, popu=population/10000)
names(myseldata)
myseldata = myseldata[c(1,3,4)]
(mymatrix = data.matrix(myseldata))
(mymatrixtrans = t(mymatrix))
barplot(mymatrixtrans, 
        xlab='States',
        main='Population vs Murders',
        col=c('blue', 'red'),
        names.arg=myseldata$state)
legend('topleft', c('Population', 'Murders'), fill=c('blue', 'red'))

##                                   Histogram
library(dplyr)
mydata = read.csv('GEStock.csv')
mysubdata <- select(mydata, Date, Price)
hist(mysubdata$Price,
     xlab='Stock Price',
     main='Stocks Data',
     col='blue',
     border='red',
     breaks=20)
##                                  Scatter plots
library(dplyr)
mydata = read.csv('murders.csv') %>% select(state, population, murders)
plot(mydata$population, mydata$murders,
     xlab='Population',
     ylab='Murders',
     main='Population vs Murders',
     col='red',
     pch=20)
##                                  Line graphs
plot(mydata$murders, type='l',
     xlab='States',
     ylab='Murders',
     col='blue',
     main='States vs Murders')
##                                   Box plots
library(dplyr)
mydata = read.csv('murders.csv') %>% select(state, population, murders, region)
boxplot(mydata$murders ~ mydata$region,
        xlab='Region',
        ylab='Murders',
        main='Regions vs Murders',
        col='red',
        border='blue',
        notch=T)
##                                Multiple plots in Layout
par(mfrow=c(2,2))
library(dplyr)
mydata = read.csv('murdersmini.csv') %>% mutate(popu=population/10000) 
names(mydata)
mydata = mydata[c(1,3,4)]
barplot(mydata$popu, xlab='States', ylab='Population',
        main='State vs Population', col='blue',
        names.arg=mydata$state)
barplot(mydata$murders, xlab='States', ylab='Murders',
        main='State vs Murders', col='blue',
        names.arg=mydata$state)
plot(mydata$popu, mydata$murders, xlab='Population', ylab='Murders',
     main='Population vs Murders', col='red',
     pch=20)

# CLEAN UP #################################################

# Clear packages
(loaded_packages = names(sessionInfo()$otherPkgs))
detach_package = function(pkg) detach(paste('package:', pkg, sep=''),character.only=T, unload=T)
for (pkg in loaded_packages)detach_package(pkg)
detach("package:datasets", unload = TRUE)  # For base

# Clear environment
rm(list = ls()) 

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L


