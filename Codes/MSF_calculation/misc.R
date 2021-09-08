#Obtained the protein conformations at different timesteps and used Prody software to obtain 
#mean square fluctuations of dimer and monomeric unit of MtrF and YdaH respectively.
#Further,computed the Fold-Change using the following script

library(bio3d)
ydah_conf1_monomer <- read.table('Ydah_monomer_minimised_conf1_full_CA_gnm_sqfluct.txt')
ydah_conf1_dimer <- read.table('Ydah_dimer_minimised_conf1_full_CA_gnm_sqfluct.txt')
ydah_conf2_dimer <- read.table('Ydah_dimer_minimised_conf2_full_CA_gnm_sqfluct.txt')
ydah_conf2_monomer <- read.table('Ydah_monomer_minimised_conf2_full_CA_gnm_sqfluct.txt')
ydah_conf1 <- cbind(ydah_conf1_dimer[1:476,],ydah_conf1_monomer)
ydah_conf2 <- cbind(ydah_conf2_dimer[1:476,],ydah_conf2_monomer)
ydah_conf1$FoldChange <- ydah_conf1$`ydah_conf1_dimer[1:476, ]`/ydah_conf1$V1
ydah_conf2$FoldChange <- ydah_conf2$`ydah_conf2_dimer[1:476, ]`/ydah_conf2$V1
colnames(ydah_conf1)[1] <- "MSF_values_Dimer"
colnames(ydah_conf1)[2] <- "MSF_values_Monomer"
ydah_conf1$residue_position <- rownames(ydah_conf1)
colnames(ydah_conf2)[1] <- "MSF_values_Dimer"
colnames(ydah_conf2)[2] <- "MSF_values_Monomer"
ydah_conf2$residue_position <- rownames(ydah_conf2)
ydah_conf1$residue_position <- rownames(ydah_conf1)
write.csv(ydah_conf1,'ydah_conf1_results.csv')
write.csv(ydah_conf2,'ydah_conf2_results.csv')

mtrf_conf1_monomer <- read.table('Mtrf_monomer_minimised_conf1_full_CA_gnm_sqfluct.txt')
mtrf_conf1_dimer <- read.table('Mtrf_dimer_minimised_conf1_full_CA_gnm_sqfluct.txt')
mtrf_conf2_dimer <- read.table('Mtrf_dimer_minimised_conf2_full_CA_gnm_sqfluct.txt')
mtrf_conf2_monomer <- read.table('Mtrf_monomer_minimised_conf2_full_CA_gnm_sqfluct.txt')
mtrf_conf1 <- cbind(mtrf_conf1_dimer[1:507,],mtrf_conf1_monomer)
mtrf_conf2 <- cbind(mtrf_conf2_dimer[1:507,],mtrf_conf2_monomer)
mtrf_conf1$FoldChange <- mtrf_conf1$`mtrf_conf1_dimer[1:507, ]`/mtrf_conf1$V1
mtrf_conf2$FoldChange <- mtrf_conf2$`mtrf_conf2_dimer[1:507, ]`/mtrf_conf2$V1
colnames(mtrf_conf1)[1] <- "MSF_values_Dimer"
colnames(mtrf_conf1)[2] <- "MSF_values_Monomer"
colnames(mtrf_conf2)[1] <- "MSF_values_Dimer"
colnames(mtrf_conf2)[2] <- "MSF_values_Monomer"
mtrf_conf2$residue_position <- rownames(mtrf_conf2)
mtrf_conf1$residue_position <- rownames(mtrf_conf1)
write.csv(mtrf_conf1,'mtrf_conf1_results.csv')
write.csv(mtrf_conf2,'mtrf_conf2_results.csv')