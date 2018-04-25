echo "++++++++++++++++++"
echo "done Installing julia PACKAGES"
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
				"ForwardDiff"]);
				Pkg.clone("https://github.com/floswald/ApproXD.jl");
				Pkg.clone("https://github.com/floswald/Copulas.jl");
				Pkg.clone("https://github.com/floswald/MomentOpt.jl");
				Pkg.clone("https://github.com/RJDennis/SmolyakApprox.jl");
				Pkg.clone("https://github.com/mrxiaohe/RobustStats.jl")
				' | \
	/apps/julia-0.6/bin/julia


echo "++++++++++++++++++"
echo "done Installing julia PACKAGES"
echo "++++++++++++++++++"
echo ""

