println("We are about to check fermat condition")
println("The condition state are no positive integers a, b, and c such that: a^n + b^ = c^n")

println("Kindly provide the value of a, b, c, and n repectively")
println("Enter a")
a = readline()
println("Enter b")
b = readline()
println("Enter c")
c = readline()
println("Enter n")
n = readline()

a = parse(Int64, a)
b = parse(Int64, b)
c = parse(Int64, c)
n = parse(Int64, n)

println("a = $a  b = $b  c = $c  n = $n")

checkfermat(a, b, c, n)

function checkfermat(a, b, c, n)
    Left = a^n 
    Right = c^n

    if n ≤ 2
        println("Note: This is out fermat condition")
        if Left == Right 
            println("Fermat's condition violated")
            println("for a = $a  b = $b  c = $c  n = $n")
        else 
            println("No, that doesn't work")
        end 
    else
        if Left == Right
            println("Smoke Everywhere, Fermat was wrong!")
        else 
            println("No that doesn't work")
        end
    end
end