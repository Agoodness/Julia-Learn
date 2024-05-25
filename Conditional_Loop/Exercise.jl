
# Exercise 3

# Write a code which takes in a string and returns the number of vowels in the string.

# Sample input:

# str = "Hello World";


# Sample output:

# 3

vowel = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
typeof(vowel)
input = "Goodness"
i = 1

# println("Enter the string to test: ")
# global input = readline()
for a ∈ 1:length(vowel)
    for c ∈ input
        println(a)
    end
end

