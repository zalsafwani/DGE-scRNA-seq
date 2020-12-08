# Set the working directory
#setwd("~/Downloads/ProjectDatasets") # set your working directory that has data

# Install developmental version from GitHub
#if(!require(devtools)) install.packages("devtools")
#devtools::install_github("miaozhun/DEsingle", build_vignettes = TRUE)

# Load the installed DEsingle in R
library(DEsingle)

# Load the datasets from scRNAseq library
#library(scRNAseq)
#data <- ReprocessedAllenData()

# Get the count reads for the data
#rsem_counts <- assay(data, "rsem_counts")
#write.csv(rsem_counts,"countsAllenData.csv")

# Or use the provided csv file
#dataset_path = "~/Downloads/ProjectDatasets/countsAllenData.csv"

# Make the dataset in the correct format
countdataFix <- read.csv(file=dataset_path,row.names=1)

# Run DEsingle for a portion of the dataset
start_time_small_run <- Sys.time()
samplesSmall <- countdataFix[1001:1200,1:150]
# Specifying the two groups to be compared
group <- factor(c(rep(1,50), rep(2,100)))
# Detecting the DE genes
results <- DEsingle(counts = samplesSmall, group = group)
# Dividing the DE genes into 3 categories at threshold of FDR < 0.05
results.classified <- DEtype(results = results, threshold = 0.05)
end_time_small_run <- Sys.time()
(end_time_small_run - start_time_small_run) # Time difference of 19.14017 secs

# Running the full dataset
#start_time_full_data <- Sys.time()
#samplesFull <- countdataFix[1:20816,1:379]
# Specifying the two groups to be compared
#groupFull <- factor(c(rep(1,189), rep(2,190)))
# Detecting the DE genes
#resultsFull <- DEsingle(counts = samplesFull, group = groupFull)
# Dividing the DE genes into 3 categories at threshold of FDR < 0.05
#results.classifiedFull <- DEtype(results = resultsFull, threshold = 0.05)
#end_time_full_data <- Sys.time()
#(end_time_full_data - start_time_full_data) # Time difference of 50.78816 mins

