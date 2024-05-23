
vowel = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
input = nothing
i = 0

global  input = parse(String, readline())
for a ∈ 1:length(vowel)
    for c ∈ input
        if c == eachindex(vowel)
            global  i +=1 
        end
    end
    println(i)
end

