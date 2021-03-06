# Install developmental version from GitHub
if(!require(devtools)) install.packages("devtools")
devtools::install_github("miaozhun/DEsingle", build_vignettes = TRUE)

# Load a test data
library(DEsingle)
data(TestData)
start_time <- Sys.time()
# Specifying the two groups to be compared
# The sample number in group 1 and group 2 is 50 and 100 respectively
group <- factor(c(rep(1,50), rep(2,100)))

# Detecting the DE genes
results <- DEsingle(counts = counts, group = group)

# Dividing the DE genes into 3 categories at threshold of FDR < 0.05
results.classified <- DEtype(results = results, threshold = 0.05)

# Extract DE genes at threshold of FDR < 0.05
results.sig <- results.classified[results.classified$pvalue.adj.FDR < 0.05, ]

# Extract three types of DE genes separately
results.DEs <- results.sig[results.sig$Type == "DEs", ]
results.DEa <- results.sig[results.sig$Type == "DEa", ]
results.DEg <- results.sig[results.sig$Type == "DEg", ]

# Extract up and down rgulatury genes separately
results.down_test <- results.sig[results.sig$State == "down", ]
results.up_test <- results.sig[results.sig$State == "up", ]


end_time <- Sys.time()

(end_time - start_time)
