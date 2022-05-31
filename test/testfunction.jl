using splatt
using NLsolve
using Random
using Distributions
splatt.add_number(1,2)
splatt.add_number(3,2)
splatt.add_three_number(2,2,3)

splatt.lognormal_perturb(2; percentage = 0.1)
Random.seed!()