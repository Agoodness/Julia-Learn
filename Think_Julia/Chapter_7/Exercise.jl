

"""
Write a function called evalloop that iteratively prompts the user, takes the resulting
input and evaluates it using eval, and prints the result. It should continue until the
user enters done, and then return the value of the last expression it evaluated.
"""

function evalloop()
    while true
        println("Enter an expression here")
        expr = readline()
        expr = Meta.parse(expr)

        if expr == "done"
           break   
        end

        result = eval(expr)
        println(result)
        
    end
    println("done")
end

evalloop()