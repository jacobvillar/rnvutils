#load the installed rnvutils package
library(rnvutils)

#sample data sets of random numbers
data1 = c(0.12,0.11,0.23,0.88,0.89,0.64,0.28,0.83,0.75,0.93)
data2 = c(0.222,0.151,0.323,0.868,0.839,0.649,0.238,0.873,0.785,0.903)
data3 = c(0.2122,0.1111,0.3423,0.8678,0.8939,0.6649,0.2538,0.8673,0.7185,0.0903)

#TEST OF UNIFORMITY
#Frequency Test for 10 intervals at 10% level of significance
freq.test(data1,10,0.10)

#TEST OF INDEPENDENCE
#Autocorrelation Test for every 2 numbers starting from the 3rd number at 5% level of significance
autocorr.test(data1,3,2,0.05)

#Poker Test for two-digit decimal numbers at 2% level of significance
poker.test.2d(data1,0.02)
poker.test.2d(data2,0.02) #this will produce an error because the random numbers in data2 are three-digit decimal numbers

#Poker Test for three-digit decimal numbers at 1% level of significance
poker.test.3d(data2,0.01)
poker.test.3d(data1,0.01) #this will produce an error because the random numbers in data1 are two-digit decimal numbers

#Poker Test for four-digit decimal numbers at 8% level of significance
poker.test.4d(data3,0.08)
poker.test.4d(data1,0.01) #this will produce an error because the random numbers in data1 are two-digit decimal numbers

#Runs Test at 6% level of significance
runs.down(data3)
runs.up(data3)
runs.test(data3,0.06)

#RANDOM VARIATES GENERATION
rv.bern(10,0.60)     #from Bernoulli(0.60)
rv.beta(10,1,9)      #from Beta(1,9)
rv.bin(10,10,0.5)    #from Bin(10,0.5)
rv.exp(10,0.8)       #from Exponential(0.8)
rv.geom(10,0.2)      #from Geometric(0.2)
rv.norm.BM(5)        #from Normal(0,1)
rv.norm.CLT(10,1000) #from Normal(0,1) using 1000 uniform numbers
rv.pois(10,0.7)      #from Poisson(0.7)
rv.unif(10,0,10)     #from Uniform(0,10)

#RANDOM NUMBER GENERATION
lin.cg(210351525,12345,2^32,5,5)
mult.cg(11043615,5233,5,5)
inv.cg(643521,14645,54,5,5)
