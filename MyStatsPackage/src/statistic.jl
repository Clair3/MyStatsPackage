function rse_sum(array)
    s = 0
    for k in array
        s += k
    end
    return s
end

rse_sum(1:36) == 666

function rse_mean(array)
    return rse_sum(array) / length(array)
end
rse_mean(-15:17) == 1

function rse_std(array)
    a = (array .- rse_mean(array)) .^ 2
    s = rse_sum(a)
    n = length(a)
    return sqrt(s / (n - 1))
end

rse_std(1:3) == 1

function rse_tstat(array; sigma = rse_std(array))
    return rse_mean(array) / (sigma / sqrt(length(array)))
end

function rse_tstat4(array; σ = rse_std(σ))
    print(rse_mean(array), σ, sqrt(length(array)))
    return rse_mean(array) / (σ / sqrt(length(array)))
end

array = 2:3
σ = rse_std(array)
rse_tstat(2:3)

struct StatResult
    x::Array
    n::Int
    std::Float64
    tvalue::Float64
end

# function StatResult(array::StatResult2)
#end
StatResult(array) = StatResult(array, length(array), rse_std(array), rse_tstat(array))
StatResult(2:10)

struct StatResult3
    x::UnitRange
    n::Int
    std::Float64
    tvalue::Float64
end
StatResult3(array) = StatResult3(array, length(array), rse_std(array), rse_tstat(array))
StatResult3(2:10)

import Base: length

function Base.length(s::StatResult)
    return s.n
end
