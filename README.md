# DGE-scRNA-seq
Differential Gene Expression Analysis of Single-Cell RNA Sequencing

The goal of this project is to run differential gene expression analysis of single-cell RNAseq data. These tools are DEsingle, and SigEMD which are packages from Bioconductor. 

## Language and installation
R language will be used for both tools
Make sure to have version 4.0.3 and RStudio version 1.3

## DEsingle (http://bioconductor.riken.jp/packages/3.7/bioc/vignettes/DEsingle/inst/doc/DEsingle.html)
Install DEsingle using the code:
- if(!require(devtools)) install.packages("devtools")
devtools::install_github("miaozhun/DEsingle", build_vignettes = TRUE)

* To run the tool download the countsAllenData.csv and tpm_countsAllenData.zip (unzip this file)
## Running DEsingle
1. For test_dataset it without the need to change.
2. For the zalsafwani_DEsingle_run: set your working directory that has countsAllenData.csv data, and change the dataset_path to the place with the countsAllenData.csv

- Result of test run: it took 33.94464 secs to run the tool. It was able to find 21 genes in DEa, 55 in DEg, and 13 in DEs. There were 42 down regulatory genes and 47 up regulatory genes

- Result of zalsafwani_DEsingle_run:it took 19.14017 secs to run the tool for the small dataset and 50.78816 mins to run the full dataset. 
For the small run, it was able to find 3 genes in DEa, 7 in DEg, and 0 in DEs. There were 7 down regulatory genes and 3 up regulatory genes.

## Results DEsingle
- For DEsingle the test dataset, it took 33.94464 secs to run the tool. It was able to find 21 genes in DEa, 55 in DEg, and 13 in DEs. There were 42 down regulatory genes and 47 up regulatory genes.
- For DEsingle my example dataset, it took 19.14017 secs to run the tool for the small dataset and 50.78816 mins to run the full dataset. 
- For the small run, it was able to find 3 genes in DEa, 7 in DEg, and 0 in DEs. There were 7 down regulatory genes and 3 up regulatory genes.


## SigEMD (https://github.com/NabaviLab/SigEMD) some code has been added to make it work 
SigEMD is based on R package make sure these are install packges before running the analysis:
- "aod","arm","fdrtool","lars", "emdist"
* Run the bellow code for one more package:
- if (!requireNamespace("BiocManager", quietly = TRUE))
install.packages("BiocManager")
BiocManager::install("BiocParallel")

## Running SigEMD
1. For test run, downlowd the SigEMD-master file and set it as working directory
-For example.R (test run) set your working path to the SigEMD-master
2. For the zalsafwani_SigEMD_run: 
I wasn’t able to run the full dataset because the code weren’t commented for some of the function so I couldn’t run it. 

## Results SigEMD
- For SigEMD the test dataset, it took 4.499182 secs to run the tool. It was able to find the 100 genes with emd value, pvalue, padjust. Example of three with the highest emd is shown below. Also, we could see the density distributions of each gene.
 	emd	pvalue	padjust
TNNT2	42.000000	0.4	0.5797101
LY96	39.857143	0.2	0.3448276
1500015O10RIK	37.333332	0.4	0.5797101
- For SigEMD my example dataset, I wasn’t able to run the full dataset because the code wasn’t commented for some of the function so I couldn’t run it. 







