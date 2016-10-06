library("devtools")
# Change these to suit your needs
dir <- '~/Documents/R/Victor'
name <- 'Test'
# Create your package
create(name)
setwd(dir)
install(name)
dir.create(paste(name, "man" , sep="/"))

dir.create(paste(paste(dir, name, sep=""), "zero", sep="/"))

