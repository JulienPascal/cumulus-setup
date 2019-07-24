#!/bin/bash
# Adds R to apt and install it
#
# Instructions:
# sudo chmod 700 installR.sh

echo ""
echo "Installing R"
echo "++++++++++++++++++"
echo ""
# install R to custom location - better to manage modules environment at some point
# apt-get install --yes libreadline6 libreadline6-dev
# apt-get install --yes zlib1g-dev
# apt-get install --yes bzip2
# apt-get install --yes lbzip2
# R 3.4.0
#---------
# wget https://cran.rstudio.com/src/base/R-3/R-3.4.0.tar.gz
# mkdir -p /apps/R-3.4
# tar -xzf R-3.4.0.tar.gz
# cd R-3.4.0
# ./configure --prefix=/apps/R-3.4 --enable-R-shlib -with-x=no
# make && make install
# echo 'export PATH="/apps/R-3.4/bin:$PATH"' >> ~/.bashrc
#
# R 3.6.0
#--------
wget https://cran.rstudio.com/src/base/R-3/R-3.6.0.tar.gz
mkdir -p /apps/R-3.6
tar -xzf R-3.6.0.tar.gz
cd R-3.6.0
./configure --prefix=/apps/R-3.6 --enable-R-shlib -with-x=no
make && make install
echo 'export PATH="/apps/R-3.6/bin:$PATH"' >> ~/.bashrc
rm R-3.6.0.tar.gz

# # ubuntu package installation  for R
# # Install old version
# echo "deb http://cran.rstudio.com/bin/linux/ubuntu yakkety/" | \
#     tee -a /etc/apt/sources.list
# apt-get install --yes r-base
# apt-get install --yes libssl-dev
#
# # install R packages
# echo 'requirements = c("ggplot2",
#                          "data.table",
#                          "Rcpp",
#                          "RcppArmadillo",
#                          "RcppGSL",
#                          "reshape2",
#                          "animation",
#                          "rjson",
#                          "xtable",
#                          "devtools",
#                          "texreg",
#                          "testthat",
#                          "gridR",
#                          "psidR",
#                          "RPostgreSQL",
#                          "sf",
#                          "rgdal",
#                          "sp",
#                          "DBI"
#                          )
#
#         sapply(requirements,
#                function(x) {
#                     if (!x %in% installed.packages()[,"Package"])
#                         install.packages(x, repos="http://cran.r-project.org")})' | \
#   R --no-save

echo ""
echo "done Installing R"
echo "++++++++++++++++++"
echo ""
