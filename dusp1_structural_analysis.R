# 1. Load the library (The toolbox)
library(airway)
# 2. Load the data (The actual folder of genes)
data("airway")
# 3. Now look at the sample info (The table)
colData(airway)

library(DESeq2)
# Create the object
dds <- DESeqDataSet(airway, design = ~ dex)
# Run the math (Wait for this to finish!)
dds <- DESeq(dds)
# Create the results 'res' object
res <- results(dds)
# Clean up missing data for the plot
res_clean <- na.omit(res)
