#############################################################################
#############################################################################
#
# This file has the basic type(s) for summary stats and the main action: summarize()
#                                                                               
#############################################################################
#############################################################################

struct DataStore
    data::Vector{Float64}

    #Inner constructor
    DataStore(data::Vector{Float64}) = new(copy(data)) #create a copy of the data
end

function summarize(ds::DataStore; quantiles = [0,0.25,0.5,0.7,1.0])
    summary = Dict{Float64, Float64}()
    for q in quantiles
        summary[q] = quantile_unsorted(ds.data, q)
    end
    return summary
end