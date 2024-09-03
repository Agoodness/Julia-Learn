
println("We will check if three lenght can form triangle")
println("Enter first number")
a = readline()
println("Enter second number")
b = readline()
println("Enter third number")
c = readline()

a = parse(Int64, a)
b = parse(Int64, b)
c = parse(Int64, c)

println(" The numbers $a  $b  $c")

istriangle(a, b, c)


function istriangle(a, b, c)

    if a > b + c
        println("No")

    elseif b > a + c
        println("No")

    elseif c > a + b
        println("No")
    else
        println("Yes")
    end
end

