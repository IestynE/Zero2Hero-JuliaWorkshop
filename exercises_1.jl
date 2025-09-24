### Babylonian Square Root
function babylonian(y,ϵ,x0 = 1)
    x, steps = x0, 0
    while abs(x-sqrt(y)) > ϵ
        x = 0.5(x+y/x)
        steps += 1
    end
    return steps
end
println(babylonian(100,0.5))

### Counting nucleotides
function nucleotides(code)
    counts = Dict("A" => 0, "T" => 0, "C" => 0, "G" => 0)
    for nucleotide in code
        if nucleotide != "A" || nucleotide != "T" || nucleotide != "C" || nucleotide != "G"
            error("$(nucleotide) is not a valid nucleotide.")
        end
        counts(nucleotide) += 1
    end
    return counts
end

### Fibonacci Numbers
function fibonacci(n)
    
end