bd_exp <- read.table("M2/Semestre_3/Phylo/Projet/fishes_BD_exp_relax/fishes_BD_expo_relax_350k.log", header=T)
bd_soft <- read.table("M2/Semestre_3/Phylo/Projet/fishes_BD_softExp_relax/fishes_softBoundUnifNorm_350k.log", header=T)
fbd_exp <- read.table("M2/Semestre_3/Phylo/Projet/fishes_FBD_exp_relax/fishes_FDB_Expo_relax.log", header=T)
fbd_soft <- read.table("M2/Semestre_3/Phylo/Projet/fishes_FDB_softExp_relax/fishes_FDB_softExp_relax.log", header=T)

clade_9 <- cbind(bd_exp$speciation_clade_9, bd_soft$speciation_clade_9, fbd_exp$speciation_clade_9, fbd_soft$speciation_clade_9)
colnames(clade_9) <- c("BD exp", "BD exp+soft", "FBD exp", "FBD exp+soft")

boxplot(clade_9, ylim=c(405, 450), ylab = "Node age", col=c("green", "#2a9d8f", "red", "purple"))
abline(h=c(410,447, 421), col="red", lty=c(2,2,1), lwd=c(3,3,1))

# boxplot(bd_exp$speciation_clade_9,  ylim=c(405, 440))