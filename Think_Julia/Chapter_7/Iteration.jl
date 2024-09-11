# This if to test break 

while true
    print("> ")
    line = readline()
    if line == "done"
        break
    end 
    println(line)
end
println("Done")