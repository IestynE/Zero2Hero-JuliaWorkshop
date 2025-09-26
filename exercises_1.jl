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
        # if !haskey(counts, nucleotide)     ~ negation of a function "haskey", testing if it doesnt have a key value of the dict.
        if nucleotide != "A" || nucleotide != "T" || nucleotide != "C" || nucleotide != "G"
            error("$(nucleotide) is not a valid nucleotide.")
        end
        counts(nucleotide) += 1
    end
    return counts
end

### Fibonacci Numbers
function fibonacci(n)
    # decided to do this the fun way, using the ternary operator.
    n == 1 || n == 2 ? 1 : fibonacci(n-1) + fibonacci(n-2)
end
fibonacci.(1:8)

### Hamming distance
# This one took FOREVER. The zip function "zips together" multiple vectors into an array, cutting off the zipping at the shortest vectors end.
# so zip("ABC","CBA") creates a vector [('A','C'), ('B','B'), ('C','A')]

# count(function, collection) checks how many times the anonymous function returns true under the collection of pairs.

function hamming(code1, code2)
    count(pair -> pair[1] != pair[2] , zip(code1,code2))
end

