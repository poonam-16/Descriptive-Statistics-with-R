height = c(166,125,130,142,147,159,159,147,165,156,149,164,137,166,135,142,133,136,127,143,165,
           121,142,148,158,146,154,157,124,125,158,159,164,143,154,152,141,164,131,152,152,161,
           143,143,139,131,125,145,140,163)

plot(height) #scatter plot

marks = c(337,316,327,340,374,330,352,353,370,380,384,398,413,428,430,438,439,479,460,450)

hours = c(23,25,26,27,30,26,29,32,33,34,35,38,39,42,43,44,45,46,44,41)

plot(hours,marks,"l") #l is used to denote it's type i.e line
#many other types are available such as p for points
#b for both (lines & points)
#h for histogram
#s for stair steps
#o for overplotted

plot(hours, marks, xlab="No. of weekly hours", ylab="Marks obtained", main="Marks obtained VS No. of hours per week")

scatter.smooth(height) #gives smooth curve

smoothScatter(height)

smoothScatter(hours,marks)

qqnorm(height) #quantile-quantile plot

qqline(height) #adds a line to QQ plot

qqplot(marks,hours)

install.packages("scatterplot3d")
library(scatterplot3d)

x = c(100, 125, 145, 160, 170)
y = c(30, 35, 50, 65, 70)
z = c(10, 15, 20, 30, 35)

scatterplot3d(x,y,z, angle = 120, color = "red") #3D plot

#perspective plot
a = seq(-10, 10, length= 30)
b = a
f =function(a,b){r = sqrt(a^2+b^2);10*sin(r)/r}
c = outer(a,b, f)
c[is.na(c)] = 1
op = par(bg = "white")

persp(a,b,c, theta = 30, phi = 30, expand = 0.5, col = "lightblue", ltheta = 120,
      shade = 0.75, ticktype = "detailed", xlab = "X", ylab = "Y", zlab = "Sinc( r )") 

cov(hours, marks) #finding co-variance

cor(hours, marks) #finding correlation co-efficient

judge1 = c(75, 25, 35, 95, 50)

judge2 = c(70, 80, 60, 30, 40)

cor(judge1,judge2, use = "everything", method = c("spearman"))

person = c("Child", "Young person", "Elder person", "Child", "Young person", "Young person",
        "Elder person", "Elder person", "Elder person", "Elder person", "Child", "Young person",
        "Elder person", "Child", "Young person", "Young person", "Elder person", 
        "Elder person", "Elder person", "Elder person")

taste = c("Good", "Good", "Bad", "Bad","Good", "Bad", "Good", "Good", "Good", "Bad",
          "Good", "Good", "Bad", "Bad", "Good", "Bad", "Good", "Good", "Good", "Bad")

table(person,taste) #contingency table with absolute frequencies

addmargins(table(person,taste)) #adds marginal frequencies

install.packages("lsr")
library(lsr)

chisq.test(table(person,taste)) #Pearson's Chi-squared test

cramersV(table(person,taste)) #Cramer's V statistic
