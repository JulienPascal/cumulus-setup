#!/bin/bash
# quit immediately on error
set -e

echo "++++++++++++++++++"
echo "Installing miniconda3"
echo "++++++++++++++++++"
echo ""

# install miniconda
rm -rf /opt/miniconda3
mkdir -p /opt/miniconda3
ln -f -s /opt/miniconda3 ~/miniconda3
CONDA_SCRIPT="Miniconda3-latest-Linux-x86_64.sh"
wget https://repo.continuum.io/miniconda/${CONDA_SCRIPT} -O ${CONDA_SCRIPT}
bash ${CONDA_SCRIPT} -b -p /opt/miniconda3 -f

# activate root environment
source $HOME/miniconda3/bin/activate

# add channels
conda config --add channels conda-forge

# upgrade everything
conda upgrade --all --quiet --yes

# INSTALL YOUR CUSTOM MODULES HERE

# create tarball
conda clean --all --yes
cd /opt
chown -R ec2-user:ec2-user miniconda3
rm -rf /opt/miniconda3/pkgs/*
tar -cvjSf /shared/miniconda3.tar.bz2 miniconda3

echo "++++++++++++++++++"
echo "Done installing miniconda3"
echo "++++++++++++++++++"
echo ""

echo "++++++++++++++++++"
echo "Installing julia PACKAGES"
echo "++++++++++++++++++"
echo ""


echo "Downloading Julia 1.0.3"
wget https://julialang-s3.julialang.org/bin/linux/x64/1.0/julia-1.0.3-linux-x86_64.tar.gz
echo "Creating directory/apps/julia-1.0.3"
mkdir -p ~/apps/julia-1.0.3
echo "Unpacking"
tar -xzf julia-1.0.3-linux-x86_64.tar.gz -C ~/apps/julia-1.0.3 --strip-components 1
echo "Creating Symlink to Julia"
#ln -s ~/apps/julia-1.0.3/bin/julia /usr/local/bin/julia.1.0
sudo ln -s ~/apps/julia-1.0.3/bin/julia /usr/local/bin
echo "Cleaning"
rm julia-1.0.3-linux-x86_64.tar.gz

echo ""
echo "done Installing julia 1.0.3"
echo "+++++++++++++++++++++++++++"
echo ""


echo ""
echo "++++++++++++++++++"
echo "done Installing julia"
echo "++++++++++++++++++"
echo ""

# echo "++++++++++++++++++"
# echo "Installing julia PACKAGES"
# echo "++++++++++++++++++"
# echo ""
#
#
# echo 'ENV["PYTHON"]=""; using Pkg; import Pkg; Pkg.add.(["JSON",
# 				"FileIO",
# 				"DataFrames",
# 				"BenchmarkTools",
# 				"RData",
# 				"Interpolations",
# 				"Yeppp",
# 				"DataFramesMeta",
# 				"FreqTables",
# 				"FixedSizeArrays",
# 				"Plots",
# 				"RCall",
# 				"Logging",
# 				"GLM",
# 				"PDMats",
# 				"Distributions",
# 				"Optim",
# 				"HDF5",
# 				"JLD",
# 				"JLD2",
# 				"JSON",
# 				"JuMP",
# 				"Ipopt",
# 				"NLsolve",
# 				"NLopt",
# 				"ClusterManagers",
# 				"Plots",
# 				"Query",
# 				"CompEcon",
# 				"QuantEcon",
# 				"ApproxFun",
# 				"PyPlot",
# 				"PyCall",
# 				"Calculus",
# 				"StatsFuns",
# 				"Dierckx",
# 				"DocOpt",
# 				"FactCheck",
# 				"ForwardDiff",
# 				"IJulia",
# 				"BlackBoxOptim"]);
# 				' | \
# 	julia
#
# echo ""
# echo "++++++++++++++++++"
# echo "done Installing julia PACKAGES"
# echo "++++++++++++++++++"
# echo ""
