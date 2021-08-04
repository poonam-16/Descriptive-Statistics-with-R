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

barplot(customer, names.arg=c("Shop 1", " Shop 2", " Shop 3"), xlab = " Shops", ylab = "Days",
        col= c("red","green","grey","blue"))

pie(table(sales)) #pie chart

pie(table(sales), labels = c("SP1","SP2", "SP3"), main = "Salespersons attending
customer", col=c("green", "red", "blue"))
