setwd('/Users/sayaneshome/Desktop/msf_calc/1')
mtrf_d <- read.table('mtrf_dimer_sqfluct.txt')
mtrf_m <- read.table('mtrf_monomer_sqfluct.txt')
ydah_d <- read.table('ydah_dimer_sqfluct.txt')
ydah_m <- read.table('ydah_monomer_sqfluct.txt')
par(mfrow=c(2,1))
plot(ydah_m$V1,type = "l",ylab = "MSF values",xlab = "Residue Position",col = "green",xlim = c(1,476),ylim = c(0,0.08),lwd = 2)
lines(ydah_d$V1,type = "l",col = "blue")
colnames(mtrf_m)[1] <- "residues"
colnames(mtrf_d)[1] <- "residues"
plot(mtrf_m$residues,mtrf_m$V1,lwd = 1.5,col = "blue",type = "l",xlab = "Residue position",ylab = "MSF values")
lines(mtrf_d$residues,mtrf_d$V1,lwd = 1.5,col = "green")

