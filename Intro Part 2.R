x = c(10,15,NA)
is.na(x) #Checks for NA's 

y = c(12,NA,15,30)
mean(y) #Mean is NA
mean(y,na.rm = TRUE) #Removes NA and gives mean of the remaining numbers

#Matrices

x = matrix(nrow = 4,ncol = 3,data = c(2,14,8,3,9,10,5,7,8,25,11,6)) #Creates matrix with 4 rows & 3 columns
x

#By default values are filled column wise, to change we use byrow function
x = matrix(nrow = 4,ncol = 3,data = c(2,14,8,3,9,10,5,7,8,25,11,6), byrow = TRUE)
x

a = matrix(nrow = 2, ncol = 2,data = 1:4)

b = matrix(nrow = 2, ncol = 2, data = 8:11)

a + b #Matrix Addition

a - b #Matrix Subtraction

y = t(x) #gives transpose of matrix x
y
 
x*5 #Matrix multiplied by a constant

z = y%*%x #Matrix multiplication
z

z[2,3] #Accessing element from 2nd row 3rd column

z[2,] #Accessing entire 2nd row

z[,3] #Accessing entire 3rd column

z[2:3, 2:3] #Accessing Sub-Matrix
