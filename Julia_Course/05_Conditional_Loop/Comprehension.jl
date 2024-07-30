
arr = [5, 7, 12, 34, 23, 56, 54]

sqr = [X^2 for X in arr]  # This program will cal culculate the squre of numbers in array and print them
print(sqr)

[(x^2, y^2) for x ∈ 1:4, y ∈ 1:3] 

[x^2 for x in arr if iseven(x)]

[(i,j) for i=1:5 for j = 1:i]

# Generator are comprehention with sqr bracket, they can be used to generate value that can be used on demand without saving then in a particular memory.

(x^2 for x ∈ 1:1000)

sum(x^2 for x ∈ 1:1000)

s = 0
@time for i = 1:1_000_000_000 s += i^2 end

@time sum([i^2 for i = 1:1_000_000_000])

@time sum(i^2 for i ∈ 1:1_000_000_000)