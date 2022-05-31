module splatt

# Write your package code here.

function add_number(a,b)
    a+b
end

function add_three_number(a,b,c)
    a+b+c
end

function lognormal_perturb1(x; percentage = 0.1, initial_x = [0.0,10.0], rng = Random.seed!())
    if x == 0
        y = 0
    else
        Ex = x
        Dx = (percentage*x)^2
        residual_lognormal(x) = lognormal_stats(x) .- [Ex,Dx]
        solution = NLsolve.nlsolve(residual_lognormal, initial_x)
        a, b = solution.zero
        y = rand(rng, LogNormal(a, b))
    end
    return Float64(y)
end

end
