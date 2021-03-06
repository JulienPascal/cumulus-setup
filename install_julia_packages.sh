echo "++++++++++++++++++"
echo "Installing julia PACKAGES"
echo "++++++++++++++++++"
echo ""


echo 'ENV["PYTHON"]=""; Pkg.add.(["JSON",
				"FileIO",
				"DataFrames",
				"BenchmarkTools",
				"RData",
				"Interpolations",
				"Yeppp",
				"DataFramesMeta",
				"FreqTables",
				"FixedSizeArrays",
				"Plots",
				"RCall",
				"Logging",
				"GLM",
				"PDMats",
				"Distributions",
				"Optim",
				"HDF5",
				"JLD",
				"JSON",
				"JuMP",
				"Ipopt",
				"NLsolve",
				"NLopt",
				"ClusterManagers",
				"Plots",
				"Query",
				"CompEcon",
				"QuantEcon",
				"ApproxFun",
				"PyPlot",
				"PyCall",
				"Calculus",
				"StatsFuns",
				"Dierckx",
				"DocOpt",
				"FactCheck",
				"ForwardDiff",
				"IJulia",
				"BlackBoxOptim"]);
				' | \
	julia

# For PyPlot:
#------------
echo 'ENV["PYTHON"]=""; Pkg.build("PyCall")' | \
julia

echo "+++++++++++++++++++++"
echo "Testing some PACKAGES"
echo "+++++++++++++++++++++"
echo ""
echo 'ENV["PYTHON"]=""; Pkg.test.([
				"PyPlot"]);
				' | \
	julia


echo ""
echo "++++++++++++++++++"
echo "done Installing julia PACKAGES"
echo "++++++++++++++++++"
echo ""
