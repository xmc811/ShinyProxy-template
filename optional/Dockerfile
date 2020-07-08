FROM rocker/shiny-verse:latest

# install R packages required 
RUN mkdir -p /opt/software/setup/R
ADD install_packages.R /opt/software/setup/R/
RUN Rscript /opt/software/setup/R/install_packages.R




