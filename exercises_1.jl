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


############################### Plotting exercises ##################
### Taylor expansion of sine
fig = Figure()
x = range(-π,π,length=20)
lines(x, sin ; label = "sin")
lines!(x, y -> y;label = "1st Order")
lines!(x, y -> y - (y^3)/6 ; label = "3rd Order")
lines!(x, y -> y - (y^3)/6 + (y^5)/120 ; label = "5th Order")
axislegend()
current_figure()

### Semi-transparent Histogram
using Random: Xoshiro
rng = Xoshiro(1234)
xp1 = 0.2randn(rng, 10_000) .+ 0.5
p2 = 0.5randn(rng, 10_000)
edges = -2:0.1:2;
hist(xp1; bins = edges, color = ("black",0.75), label = "p1")
hist!(p2; bins = edges, color = ("red",0.75), label = "p2")
ylims!(0,nothing)
axislegend()
current_figure()

### Cool spiral
fig = Figure(resolution = (600,600))

Box(fig[1, 1:2]; color = "yellow", strokewidth = 0)
Box(fig[1:2, 3]; color = "tomato", strokewidth = 0)
Box(fig[2:3, 1]; color = "green", strokewidth = 0)
Box(fig[2, 2]; color = "blue", strokewidth = 0)
Box(fig[3, 2:3]; color = "pink", strokewidth = 0)

ax = Axis(fig[:,:])
n = 4
t = 0:0.01:2n*π
x = (2n*π .- t) .* cos.(t)
y = (2n*π .- t) .* sin.(t)
lines!(x,y;color = "black",linewidth = 5)

hidespines!(ax)
hidedecorations!(ax)
fig