sales = c(1,1,2,1,2,3,2,2,3,3,3,1,2,3,2,2,3,1,1,3,3,1,2,1,3,3,3,2,2,2,2,1,2,2,1,1,1,3,2,2,1,2,3,2,2,1,2,3,3,2,1,
          2,2,3,1,1,2,1,2,3,2,3,2,2,3,1,2,3,3,3,2,1,1,1,2,1,1,2,1,2,3,3,1,2,3,3,2,1,2,3,2,1,3,2,2,2,2,3,2,2)

barplot(sales)  #gives individual bar 

barplot(table(sales)) #absolute freq

barplot(table(sales)/length(sales)) #relative freq

barplot(table(sales), main = "Customers attended by sales persons",
        names.arg=c("SP1", "SP 2", "SP 3"), xlab = "Sales Persons",
        ylab = "No. of customers",col=c("red","green","orange"))

#main gives title to the bar plot
#names.arg is used to name each bar
#xlab and ylab are used to give labels to x & y axis respectively
#col is used to give colors to each bar

customers = matrix(nrow=4, ncol=3, data =c(2,20,30,26,53,40,42,15,25,30,75,100), byrow = T)
customers

barplot(customers)
#since "customers" variable is matrix, this will give us sub-divided bar graph with columns as bars

barplot(customers, names.arg=c("Shop 1", " Shop 2", " Shop 3"), xlab = " Shops", ylab = "Days",
        col= c("red","green","grey","blue"))

pie(table(sales)) #2D pie chart

pie(table(sales),labels = c("SP1","SP2", "SP3"), main = "Salespersons attending customer", col=c("green", "red", "blue"))

#For 3D pie chart we first need to install plotrix

install.packages("plotrix")
library(plotrix)

pie3D(table(sales)) #gives 3D pie chart

pie3D(table(sales),labels = c("SP1","SP2", "SP3"), main = "Salespersons attending
customer", col=c("purple", "grey", "cyan"))

pie3D(table(sales), explode = 0.1,labels = c("SP1", "SP2", "SP3"),
      main ="Salespersons attending customer",col=c("purple", "grey", "cyan"))

#explode is used to give gap between two categories in a pie chart

height = c(166,125,130,142,147,159,159,147,
           165,156,149,164,137,166,135,142,133,136,127,143,
           165,121,142,148,158,146,154,157,124,125,158,159,
           164,143,154,152,141,164,131,152,152,161,143,143,
           139,131,125,145,140,163)

hist(height) #gives histogram

hist(height, main = "Heights of persons",col = "green", xlab = "Heights", ylab ="Number of Persons")

#Kernel density plot is a smooth curve and represents data distribution.

plot(density(height)) #Default Gaussian kernel

plot(density(height,adjust=1.5))

#some more kernels
plot(density(height,kernel ='gaussian'))

plot(density(height,kernel ='rectangular'))

plot(density(height,kernel='epanechnikov'))

plot(density(height,kernel='triangular'))

defective = c(46, 24, 53, 44, 18, 34, 65, 54,66, 35, 48, 56, 73, 38, 49)

stem(defective)

stem(defective, scale=2)
