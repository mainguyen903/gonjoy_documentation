# Load library

#
path=paste(getwd(),"/Raw/",sep="")

# Import data 
Tables = sapply(paste(path,list.files("Raw"),sep=''), read.csv, simplify = FALSE)

customer = Tables[[1]]
histLoc=Tables[[2]]
histNLP=Tables[[3]]
histSearch = Tables[[4]]
intent=Tables[[5]]
intentInput=Tables[[6]]
loyalCus=Tables[[7]]
loyalProg=Tables[[8]]
menus=Tables[[9]]
placeDisp=Tables[[10]]
places=Tables[[11]]
promotion=Tables[[12]]
provider=Tables[[13]]
rewards=Tables[[14]]
ships=Tables[[15]]
tags=Tables[[16]]
visit=Tables[[17]]
api=Tables[[18]]