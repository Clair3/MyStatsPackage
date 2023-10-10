module MyStatsPackage

using ProgressMeter
include("statistic.jl")
export print_owner
export rse_sum, rse_mean, rse_std, rse_tstat

function print_owner()
    print("Created by Clair3")
end



end # module
