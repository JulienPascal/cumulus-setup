Pkg.clone("https://github.com/floswald/ApproXD.jl");
Pkg.clone("https://github.com/floswald/Copulas.jl");
Pkg.clone("https://github.com/floswald/MomentOpt.jl");
Pkg.clone("https://github.com/RJDennis/SmolyakApprox.jl");
Pkg.clone("https://github.com/mrxiaohe/RobustStats.jl");
# Within Julia
#Pkg.clone("https://github.com/JulienPascal/Palvit.git")
#Pkg.clone("https://github.com/JulienPascal/LiseRobin2016.jl.git")
#Pkg.clone("https://github.com/JulienPascal/LisePascalRobin.jl.git")
#Pkg.clone("https://github.com/JulienPascal/Reiter2009.jl.git")
#Pkg.clone("https://github.com/JulienPascal/Robin2011.jl.git")


echo "+++++++++++++++++++++"
echo "Creating Symlinks for:"
echo "LiseRobin2016"
echo "LisePascalRobin"
echo "Palvit"
echo "Reiter2009"
echo "Robin2011"
echo "+++++++++++++++++++++"
ln -s ~/.julia/v0.6/LiseRobin2016 ~/Documents/REPOSITORIES/LiseRobin2016
ln -s ~/.julia/v0.6/LisePascalRobin ~/Documents/REPOSITORIES/LisePascalRobin
ln -s ~/.julia/v0.6/Palvit ~/Documents/REPOSITORIES/Palvit
ln -s ~/.julia/v0.6/Reiter2009 ~/Documents/REPOSITORIES/Reiter2009
ln -s ~/.julia/v0.6/Robin2011 ~/Documents/REPOSITORIES/Robin2011

