sales = c(1,1,2,1,2,3,2,2,3,3,3,1,2,3,2,2,
          3,1,1,3,3,1,2,1,3,3,3,2,2,2,2,1,
          2,2,1,1,1,3,2,2,1,2,3,2,2,1,2,3,
          3,2,1,2,2,3,1,1,2,1,2,3,2,3,2,2,
          3,1,2,3,3,3,2,1,1,1,2,1,1,2,1,2,
          3,3,1,2,3,3,2,1,2,3,2,1,3,2,2,2,2,3,2,2)

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
