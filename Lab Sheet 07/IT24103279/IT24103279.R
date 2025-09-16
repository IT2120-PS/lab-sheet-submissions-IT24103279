setwd("C:\\Users\\Hiruni\\Desktop\\IT24103279")

#Q1
#X with a=0 and b=40.
punif(25, min=0, max=40, lower.tail = TRUE) - punif(10, min=0, max=40, lower.tail = TRUE)


#Q2
#X with lambda=0.33
pexp(2, rate=0.33, lower.tail = TRUE)


#Q3
#X has mean=100 and standard deviation=15
#(i)
1 - pnorm(130, mean = 100, sd = 15, lower.tail = TRUE)
#(ii)
qnorm(0.95, mean = 100, sd = 15, lower.tail = TRUE)