# Load the datasets from scRNAseq library
#library(scRNAseq)
#data <- ReprocessedAllenData()

# Get the count reads for the data
#rsem_counts <- assay(data, "rsem_counts")
#write.csv(rsem_counts,"countsAllenData.csv")

# Or use the provided csv file
setwd("~/Downloads/SigEMD-master")
dataset_path = "~/Downloads/ProjectDatasets/tpm_countsAllenData.csv"
# SigEMD is based on R package "aod","arm","fdrtool","lars", "emdist"

#if (!requireNamespace("BiocManager", quietly = TRUE))
#install.packages("BiocManager")
#BiocManager::install("BiocParallel")

library(aod)
library(arm)
library(fdrtool)
library(lars)
library(emdist)
source("FunImpute.R")
source("SigEMDHur.R")
source("SigEMDnonHur.R")
source("plot_sig.R")

# Make the dataset in the correct format
tmp_countdata <- read.csv(file=dataset_path,row.names=1)

tmp_countSamll <- tmp_countdata[1:100,1:92]
#write.csv(tmp_countdata, "tmp_countdata.csv")


start_time <- Sys.time()
tmp_countSamll <- dataclean(tmp_countSamll)
databinary<- databin(tmp_countSamll)
names(condition) <- colnames(tmp_countSamll)

# Set Hur_gene to NULL if imputation isn't applied.
resultsFullDataset<- calculate_single(data =  tmp_countSamll,condition =  condition,Hur_gene = NULL, binSize=0.2,nperm=5)

# The function returns a matrix with EMD score and the adjust p-value of each gene.
emdFullDataset<- resultsFullDataset$emdall
end_time <- Sys.time()

(end_time - start_time) 
head(emdFullDataset)

write.csv(emd,"SigEMD_example_Result.csv")

