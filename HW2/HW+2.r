
w0 <- 100 # Initial wealth
p <- 0.5 # Probability of a win
T <- 10000  # Terminal time

# Create empty objects to fill
w <- rep(0, T+1)
x <- rep(0, T)

# Fill initial wealth
w[1] = w0

for(t in 1:T){
    # A random draw
    u <- runif(1)
    p <- runif(1) #p becomes a uniform random variable: its value changes at each loop
    if(u <= 1 - p){
        x[t] <- 0
        w[t+1] <- w[t] - 1
    } else {
        x[t] <- 1
        w[t+1] <- w[t] + 1
    }
}
time = 0:T
plot(time, w, type='l')





w0 <- 100 # Initial wealth
u <- runif(1) #u takes a random value, but only at the beginning (outside of the loop. The same random shock is gonna hit p all the time.
T <- 10000  # Terminal time

# Create empty objects to fill
w <- rep(0, T+1)
x <- rep(0, T)

# Fill initial wealth
w[1] = w0

for(t in 1:T){
    # A random draw
    p <- runif(1)
    if(u <= 1 - p){
        x[t] <- 0
        w[t+1] <- w[t] - 1
    } else {
        x[t] <- 1
        w[t+1] <- w[t] + 1
    }
}
time = 0:T
plot(time, w, type='l')


#To plot both paths, I'm first going to rewrite the two codes, changing their names.
w10 <- 100 # Initial wealth
p <- 0.5 # Probability of a win
T <- 10000  # Terminal time

# Create empty objects to fill
w1 <- rep(0, T+1)
x <- rep(0, T)

# Fill initial wealth
w1[1] = w10

for(t in 1:T){
    # A random draw
    u <- runif(1)
    p <- runif(1) #p becomes a uniform random variable: its value changes at each loop
    if(u <= 1 - p){
        x[t] <- 0
        w1[t+1] <- w1[t] - 1
    } else {
        x[t] <- 1
        w1[t+1] <- w1[t] + 1
    }
}
time = 0:T


w0 <- 100 # Initial wealth
u <- runif(1)
T <- 10000  # Terminal time

# Create empty objects to fill
w <- rep(0, T+1)
x <- rep(0, T)

# Fill initial wealth
w[1] = w0

for(t in 1:T){
    # A random draw
    p <- runif(1)
    if(u <= 1 - p){
        x[t] <- 0
        w[t+1] <- w[t] - 1
    } else {
        x[t] <- 1
        w[t+1] <- w[t] + 1
    }
}
time = 0:T


#Here come the problems: how to plot both paths? Paul gave me the idea to put a minimum and a maximum value for the graph.
#It is asking for the function 'xlim', but I don't know how to write it... And when I write it he says that he doesn't understand it


maxval <- max(w, w1)
minval <- min(w, w1)
plot(w, w1)
xlim(1, 10)

#Although, I end up witha graph: I'm not sure it's the right one


#Here, I tried to create a loop inside of another loop (loopception). Indeed, I kept the initial loop, running for a certain
#value of p. Then, keeping the final value of w, and running this loop M times. In the end, adding all the w in T, and dividing
#T by M, to get the average.
#But apparently, it didn't work so well

############ Comment
# Because u is a fixed value, you will always get the same answer!
# Your approach was very good though, with the nested loops. Check
# out the correction to see how I approached the problem.


w0 <- 100 # Initial wealth
u <- runif(1) #u takes a random value, but only at the beginning (outside of the loop. The same random shock is gonna hit p all the time.
L <- 100  #number of trials in one loop
M <- 10 #total number of loops
T <- 0 #it will contain the sum of the results of all the trials

w <- rep(0, T+1)
x <- rep(0, T)

# Fill initial wealth
w[1] = w0

p <- runif(1) #p is taken out of the loop, to get only one value for it.

for(M in 1:10){ #creating the upper loop


for(t in 1:M){ #the inner loop


    if(u <= 1 - p){
        x[t] <- 0
        w[t+1] <- w[t] - 1
        T <- T+w[t+1]
    } else {
        x[t] <- 1
        w[t+1] <- w[t] + 1
    T <- T+w[t+1]
    }


}
    M <- M+1
T <- T+w[t+1]
}

time = 0:M
T <- T/M #computing the average (= sum of all the results / number of trials)
show (T)


#Here, if the last question had gone well, I think I'd have put the p inside of the loop again, to give it many
#different random values.
