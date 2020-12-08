# DGE-scRNA-seq
Differential Gene Expression Analysis of Single-Cell RNA Sequencing

The goal of this project is to run differential gene expression analysis of single-cell RNAseq data. These tools are DEsingle, and SigEMD which are packages from Bioconductor. 

## Language and installation
R language will be used for both tools

### DEsingle 
Install DEsingle using the code:
- if(!require(devtools)) install.packages("devtools")
devtools::install_github("miaozhun/DEsingle", build_vignettes = TRUE)
SigEMD is based on R package "aod","arm","fdrtool","lars", "emdist"

### SigEMD
SigEMD is based on R package make sure these are install packges before running the analysis:
- "aod","arm","fdrtool","lars", "emdist"
Run the bellow code for one more package
- if (!requireNamespace("BiocManager", quietly = TRUE))
install.packages("BiocManager")
BiocManager::install("BiocParallel")
