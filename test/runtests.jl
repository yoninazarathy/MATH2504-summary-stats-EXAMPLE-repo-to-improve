#############################################################################
#############################################################################
#
# A script that runs all unit tests in the project.
#                                                                               
#############################################################################
#############################################################################

include("../summary-stats-project.jl")

####
# Execute unit tests for quantiles
###
include("test_quantiles.jl")
test_quantiles()

####
# Execute unit tests for moments
####
include("test_moments.jl")
test_mean()
test_variance()

