time = c(32, 35, 45, 83, 74, 55, 68, 38, 35,55, 66, 65, 42, 68, 72, 84, 67, 36, 42, 58)
mean(time) #gives mean

new = c(NA, NA, 45, 83, 74, 55, 68, 38,35, 55, 66, 65, 42, 68, 72, 84, 67, 36, 42, 58)
mean(new) #mean will be NA if data has atleat one NA

mean(new,na.rm = TRUE) #first removes NA and then takes the mean of the remaining data

breaks = seq(30, 90, by=10)
new_time = cut(time,breaks,right = FALSE)
new_time

table(new_time)

f = as.numeric(table(new_time)) #To extract frequency
f

weights = c(35,45,55,65,75,85) #assigns weight
weighted.mean(weights,f)

minutes = c(30,31,30,30,29,29,29,29,29,28,28,28,27,27,27,26,26,26,26,25,25,25,25,25,25,
            24,24,23,22,21,21)

median(minutes) #gives median

new_minutes = c(NA,30,30,29,29,29,29,29,28,28,28,27,27,27,NA,26,26,26,26,25,25,25,25,25,
               25,24,24,23,22,21,21)

median(new_minutes) #median will be NA

median(new_minutes,na.rm = TRUE) #It will first remove all the NA's and then give median

height = c(166,125,130,142,147,159,159,147,165,156,149,164,137,166,135,142,133,136,127,143,
           165,121,142,148,158,146,154,157,124,125,158,159,164,143,154,152,141,164,131,152,
           152,161,143,143,139,131,125,145,140,163)

quantile(height) #by default gives quartiles

quantile(height,probs = seq(0,1,0.25)) #gives same output as earlier

quantile(height,probs = seq(0,1,0.1)) #gives deciles

quantile(height,probs = seq(0,1,0.01)) #gives percentiles

#Quantiles with missing Data

new_height = c(NA,NA,130,142,147,159,159,147,165,156,149,164,137,166,135,142,133,
                136,127,143,165,121,142,148,158,146,154,157,124,125,158,159,164,143,
                154,152,141,164,131,152,152,161,143,143,139,131,125,145,140,163)

quantile(new_height,na.rm = TRUE)

#Similarly for Deciles & Percentiles

data = c(10,10,10,10,2,2,3,4,5,6)

tab = table(as.vector(data)) #creates a table of data
tab 
#First row is a sorted list of all unique values present in "data"
#Second row is the count

names(tab)[tab == max(tab)] #gives mode

raw_data = matrix(nrow= 3, ncol=3, data=c(1,2,2,3,3,4,5,6,6))
raw_data

raw_tab = table(as.vector(raw_data))
raw_tab

names(raw_tab)[raw_tab == max(raw_tab)]
#Since 2,3 & 6 has highest and equal count all of these are mode

prod(minutes)^(1/length(minutes)) #geometric mean for discrete data

n_breaks = seq(15,40, by = 5)
minutes_c = cut(minutes,n_breaks,right = FALSE)

minutes_c

table(minutes_c)

freq = as.numeric(table(minutes_c))
freq

x = c(17.5,22.5,27.5,32.5,37.5) #middle values

prod(x^freq)^(1/sum(freq)) #geometric mean for continuous data

1/mean(1/minutes) #harmonic mean for discrete data

1/mean(freq/x) #harmonic mean for continuous data
