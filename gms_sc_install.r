# Install packages
# this has been test on R 3.6.3, R 3.6.0 

if (!requireNamespace("BiocManager", quietly = TRUE))
	install.packages("BiocManager")

BiocManager::install(c("Seurat", "tidyverse"))
devtools::install_github('satijalab/seurat-data')


# Load data 
library(tidyverse)
library(Seurat)
library(SeuratData)

# install data

# the first data set "pbmc3k" will needed to be downloaded 
# Make a folder for this session, within that create a folder called "data"
# Then save the data in this link:
# https://cf.10xgenomics.com/samples/cell/pbmc3k/pbmc3k_filtered_gene_bc_matrices.tar.gz  
# unzip the folder adn check that it contains contains 3 files, barcodes.tsv, genes.tsv and matrix.mtx

# Installing the other two datasets using the SeuratData package
# the Seurat Data will install into your R libraries so you fon't need to worry where it is saved
AvailableData()
InstallData("ifnb")
InstallData("cbmc")
# check they have installed
AvailableData()[,c("Dataset", "Installed")]




