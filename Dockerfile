# Docker inheritance
FROM bioconductor/bioconductor_docker:devel

RUN apt-get update
RUN R -e 'BiocManager::install(ask = F)' && R -e 'BiocManager::install(c("magick", \
    "tidyverse", "vroom", "VennDiagram", \
    "Biostrings", "corrplot", ask = F))' \
	&& R -e 'tinytex::install_tinytex()' \
	&& R -e 'install.packages("dplyr")'
RUN Rscript -e 'install.packages(BiocManager::install(c("Phyloseq")))'



### Install asciinema
RUN apt-get install -y  \
asciinema 


