
# Installed packages: shiny, tidyverse, devtools


install.packages(c('magrittr','shinythemes','shinyWidgets','DT','RColorBrewer','circlize','scales','R.utils'), repos = 'http://cran.rstudio.com/')

if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install(c('DESeq2','ComplexHeatmap','fgsea','maftools','AnnotationDbi','org.Hs.eg.db','org.Mm.eg.db','DNAcopy','CNTools'))

