install.packages("moments")
library(moments)

time = c(32, 35, 45, 83, 74, 55, 68, 38, 35,55, 66, 65, 42, 68, 72, 84, 67, 36, 42, 58)

all.moments(time, order.max = 4) #for raw moments
#order.max gives the maximum order of the moments to be computed, by default it takes the value 2

all.moments(time, order.max = 4, central = TRUE) #for central moments

all.moments(time, order.max = 4, absolute = TRUE) #for absolute moments

skewness(time)

kurtosis(time)

#while dealing with missing values just add na.rm = TRUE and the rest of the code remains same
