using Dates

function gettime(myfunction)
    t0 = Dates.now()
    result = myfunction()
    t1 = Dates.now()    
    duration = t1 - t0
    println("Run time: ", duration)
    return result
end

gettime(rand(1_000_000))
gettime(println("Mataprogramming is nice"))


gettime( () -> rand(1_000_000) )
gettime( () -> println("Metaprogramming is nice") )

func() = rand(1_000_000)
gettime(func)

# Using Macros in Julia

@time rand(1_000_000)
@time println("Metaprogramming is nice")