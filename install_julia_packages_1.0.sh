echo "++++++++++++++++++"
echo "Installing julia PACKAGES"
echo "++++++++++++++++++"
echo ""


echo 'ENV["PYTHON"]=""; using Pkg; import Pkg; Pkg.add.(["JSON",
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
				"JLD2",
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
	julia.1.0

echo ""
echo "++++++++++++++++++"
echo "done Installing julia PACKAGES"
echo "++++++++++++++++++"
echo ""
