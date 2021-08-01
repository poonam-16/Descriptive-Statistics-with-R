result = c(1,2,1,2,2,1,1,2,1,1)
result

table(result) #gives absolute frequencies

table(result)/length(result) #gives relative frequencies

time = c(32,35,45,83,74,55,68,38,35,55,66,65,42,68,72,84,67,36,42,58)
range(time) #gives minimum & maximum value

breaks = seq(30,90,by = 10) #creates a sequence starting from 30 uptill 90 at interval of 10 integers
breaks

new = cut(time,breaks, right = F) #creating intervals
new

table(new) #absolute frequency

cbind(table(new)) #creating  for absolute frequency

cbind(table(new)/length(new)) #creating column for relative frequency

cumsum(table(new)) #cumulative sum
