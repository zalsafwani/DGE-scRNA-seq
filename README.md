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

* To run the tool download the countsAllenData.csv and tpm_countsAllenData.zip (unzip this file)
# Running DEsingle
1. For test_run it without the need to change.
2. For the zalsafwani_DEsingle_run: set your working directory that has countsAllenData.csv data, and change the dataset_path to the place with the countsAllenData.csv

- Result of test run: it took 33.94464 secs to run the tool. It was able to find 21 genes in DEa, 55 in DEg, and 13 in DEs. There were 42 down regulatory genes and 47 up regulatory genes

- Result of zalsafwani_DEsingle_run:it took 19.14017 secs to run the tool for the small dataset and 50.78816 mins to run the full dataset. 
For the small run, it was able to find 3 genes in DEa, 7 in DEg, and 0 in DEs. There were 7 down regulatory genes and 3 up regulatory genes.


### SigEMD (https://github.com/NabaviLab/SigEMD) some code has been added to make it work 
SigEMD is based on R package make sure these are install packges before running the analysis:
- "aod","arm","fdrtool","lars", "emdist"
* Run the bellow code for one more package:
- if (!requireNamespace("BiocManager", quietly = TRUE))
install.packages("BiocManager")
BiocManager::install("BiocParallel")

# Running SigEMD
1. For test run, downlowd the SigEMD-master file and set it as working directory
-For example.R (test run) set your working path to the SigEMD-master
2. For the zalsafwani_SigEMD_run: 
-set your working path to the SigEMD-master and the path to dataset file after unziping it




