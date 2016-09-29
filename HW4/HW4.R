#Instead of defining X being a column, we define it as a matrix, one column of 1. 1 and one column of x1. xn.  
#So a constant appears. 
#That's a problem. 

require(MASS)

#Question 2

# Set the correlation parameter and mean
beta = 0.5
SIGMA = matrix(c(1,beta,beta,1), ncol=2)
MU = c(2.0, 1.0)

# Set the sample size
N = 50

# Draw your sample
out <- mvrnorm(N, mu = MU, Sigma = SIGMA)
#Our data set is named `out`, which we split into y and X
y <- out[, 2]
X <- cbind(rep(1, N),out[, 1]) #I understood that I had to add a column of N, but I
#didn't know how to do it... Thanks again, Paul. I'll pay him a coffee one of these days. 
 


# Now carry out intermediate calculations
XT = t(X)
XTX = XT%*%X
invXTX = solve(XTX)
XTy = XT%*%y
beta = invXTX %*% XTy
beta

# Now add this line to the plot
plot(out)
abline(lm(out[,2]~out[,1]), col="red") # regression line (y~x) 
abline(a=0, b=beta, col="blue")


#Question 3
#Even Paul's answers couldn't do anything on this one. 

#Question 4
#Well well well

#Question 5
#Taking a break was easier than the previous questions

