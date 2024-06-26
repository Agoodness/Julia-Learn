
mutable struct model{R}
    coefficients::Vector{R}
end

function (m::model)(x)
    coeff = m.coefficients
    s = 0 
    for i in 1:length(x)
        s += x[i] * coeff[i]
    end 
    return s
end

lm = model([1, 3, 5])

lm([2, 4, 6])