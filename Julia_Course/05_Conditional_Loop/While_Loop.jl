
#=  This code takes in Integer inputs and print the number of integers user enters
then calculate the sum of numbers and the average of the numbers.
=#

input = nothing
arr = []

while input != 0
    print("Enter a number (0 to exit): ")
    global input = parse(Int, readline())
    append!(arr, input)
end

println("You entered        : ", length(arr), "numbers")
println("Sum of numbers     : ", sum(arr))
println("Average of numbers : ", sum(arr)/length(arr))
