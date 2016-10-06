#I tried to create my package: I created it, but then, it was impossible to change my working directory to do anything else after that. 
#I created the function that my package will run, but I didn't really understand how we can link the function to the package.
#I am quite struggling with the way we are supposed to navigate through our repositories from R (or even the commnand lines).
#I tried so follow several websites, and they all tell me to use functions like "setwd()" that always lead me to the error message:
# "impossible to change the working directory"

library("devtools")
# Change these to suit your needs
dir <- '~/Documents/R/Victor'
name <- 'Test'
# Create your package
create(name)

#Until there everything was fine 
#I created my other function, and didn't know to do with it

setwd(dir)
install(name)
dir.create(paste(name, "man" , sep="/"))

dir.create(paste(paste(dir, name, sep=""), "zero", sep="/"))

