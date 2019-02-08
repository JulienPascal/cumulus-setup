echo "++++++++++++++++++++++++++++++++++	"
echo "Installing julia v0.6 and packages"
echo "++++++++++++++++++++++++++++++++++	"
echo ""
# The following should be executed with sudo
#-------------------------------------------
# get julia v0.6

# 0.6.3
#-------
# echo "Downloading Julia 0.6.3"
# wget https://julialang-s3.julialang.org/bin/linux/x64/0.6/julia-0.6.3-linux-x86_64.tar.gz
# echo "Creating directory/apps/julia-0.6"
# mkdir -p /apps/julia-0.6
# echo "Unpacking"
# tar -xzf julia-0.6.3-linux-x86_64.tar.gz -C /apps/julia-0.6 --strip-components 1
# echo "Creating Symlink to Julia"
# ln -sf /apps/julia-0.6/bin/julia /usr/local/bin/julia
# echo "Cleaning"
# rm julia-0.6.3-linux-x86_64.tar.gz
#
# echo ""
# echo "done Installing julia 0.6.3"
# echo "+++++++++++++++++++++++++++"
# echo ""
#-------------------------------------------
# 0.7.0
#-------
echo "Downloading Julia 0.7"
wget https://julialang-s3.julialang.org/bin/linux/x64/0.7/julia-0.7.0-linux-x86_64.tar.gz
echo "Creating directory/apps/julia-0.7.0"
mkdir -p ~/apps/julia-0.7.0
echo "Unpacking"
tar -xzf julia-0.7.0-linux-x86_64.tar.gz -C ~/apps/julia-0.7.0 --strip-components 1
echo "Creating Symlink to Julia"
ln -s ~/apps/julia-0.7.0/bin/julia /usr/local/bin/julia.0.7
echo "Cleaning"
rm julia-0.7.0-linux-x86_64.tar.gz

echo ""
echo "done Installing julia 0.7.0"
echo "+++++++++++++++++++++++++++"
echo ""


# echo "+++++++++++++++++++++"
# echo "Getting PyPlot ready"
# echo "+++++++++++++++++++++"
# echo ""
#
# sudo apt install python-pip
# export LC_ALL=C
# pip install --user matplotlib
#
# #necessary if running this script as sudo
# cd
# sudo chown -R $USER .julia
#
#
# echo 'ENV["PYTHON"]=""; Pkg.build("PyCall")' | \
# 	/apps/julia-0.6/bin/julia
#
# alias julia="$HOME/local/bin/julia"
