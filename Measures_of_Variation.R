time = c(32, 35, 45, 83, 74, 55, 68, 38, 35,55, 66, 65, 42, 68, 72, 84, 67, 36, 42, 58)

max(time)- min(time)

range(time) #gives max and min values

IQR(time) #interquartile range

IQR(time)/2 #quartile deviation

#Handling missing values
new_time = c(NA, 45, 83, 74, 55, 68,NA, 38,35, 55, 66, 65, 42,NA, 68, 72, 84, 67, 36, 42, 58)

max(new_time, na.rm = TRUE) - min(new_time,na.rm = TRUE)

IQR(new_time,na.rm = TRUE)

IQR(new_time, na.rm = TRUE)/2

mean(abs(time - 10)) #absolute mean deviation around 10

median(time)

mean(abs(time - median(time))) #absolute mean deviation around median

var(time) #variance with (n-1) divisor i.e. sample variance

sqrt(var(time)) #standard deviation with (n-1) divisor i.e. standard deviation of a sample

((length(time) - 1)/length(time))*var(time)
#variance with divisor (n) i.e. population variance

sqrt(((length(time) - 1)/length(time))*var(time))
#standard deviation with divisor (n) i.e. standard deviation of a population

sqrt(var(time))/mean(time) #coefficient of variation (CV)

summary(time) #gives min,max,mean and quartiles

boxplot(time)

y = c(320, 350, 45, 83, 74, 55, 68, 38,35, 55, 66, 65, 42, 68, 72, 84, 67, 36, 42, 58)

df = data.frame(time, y) #creates a dataframe

boxplot(df)
