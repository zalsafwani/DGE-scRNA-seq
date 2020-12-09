# DGE-scRNA-seq
Differential Gene Expression Analysis of Single-Cell RNA Sequencing

The goal of this project is to run differential gene expression analysis of single-cell RNAseq data. These tools are DEsingle, and SigEMD which are packages from Bioconductor. 

## Language and installation
R language will be used for both tools
Make sure to have version 4.0.3 and RStudio version 1.3

### DEsingle (http://bioconductor.riken.jp/packages/3.7/bioc/vignettes/DEsingle/inst/doc/DEsingle.html)
Install DEsingle using the code:
- if(!require(devtools)) install.packages("devtools")
devtools::install_github("miaozhun/DEsingle", build_vignettes = TRUE)

* To run the tool download the countsAllenData.csv
1. For test run it without the need to change.
2. For the zalsafwani_DEsingle_run: set your working directory that has countsAllenData.csv data, and change the dataset_path to the place with the countsAllenData.csv



### SigEMD (https://github.com/NabaviLab/SigEMD) some code has been added to make it work 
SigEMD is based on R package make sure these are install packges before running the analysis:
- "aod","arm","fdrtool","lars", "emdist"
* Run the bellow code for one more package:
- if (!requireNamespace("BiocManager", quietly = TRUE))
install.packages("BiocManager")
BiocManager::install("BiocParallel")
