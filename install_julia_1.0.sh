echo "++++++++++++++++++++++++++++++++++	"
echo "Installing julia v1.0.3"
echo "++++++++++++++++++++++++++++++++++	"
echo ""
#-------------------------------------------
# 1.3.0
#-------
echo "Downloading Julia 1.0.3"
wget https://julialang-s3.julialang.org/bin/linux/x64/1.0/julia-1.0.3-linux-x86_64.tar.gz
echo "Creating directory/apps/julia-1.0.3"
mkdir -p ~/apps/julia-1.0.3
echo "Unpacking"
tar -xzf julia-1.0.3-linux-x86_64.tar.gz -C ~/apps/julia-1.0.3 --strip-components 1
echo "Creating Symlink to Julia"
ln -s ~/apps/julia-1.0.3/bin/julia /usr/local/bin/julia.1.0
echo "Cleaning"
rm julia-1.0.3-linux-x86_64.tar.gz

echo ""
echo "done Installing julia 1.0.3"
echo "+++++++++++++++++++++++++++"
echo ""
