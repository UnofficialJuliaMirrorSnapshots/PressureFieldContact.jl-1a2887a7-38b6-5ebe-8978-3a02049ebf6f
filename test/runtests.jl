using Test
using PressureFieldContact
using StaticArrays
using Rotations
using LinearAlgebra
using RigidBodyDynamics
using PressureFieldContact.Tri_Tet_Intersections
using PressureFieldContact.NumericalTricks
using PressureFieldContact.Binary_BB_Trees
using PressureFieldContact.Radau

set_zero_subnormals(true)
BLAS.set_num_threads(1)  # NOTE: comment out this line if using IntelMKL


include(joinpath("test_math_kernel", "runtests.jl"))
include(joinpath("test_tri_tet_intersections", "runtests.jl"))
include(joinpath("test_obb", "runtests.jl"))
include(joinpath("test_radau", "runtests.jl"))
include("test_friction.jl")
include("test_exports.jl")
include("test_normal.jl")
include("test_mesh_body_utility.jl")
include("test_vol_vol.jl")
include("boxes.jl")