"""
Modify your program to prompt the user to enter a string of forbidden letters and
then print the number of words that don’t contain any of them. Can you find a com‐
bination of five forbidden letters that excludes the smallest number of words?
"""
#= This function will check takes 2 argument, word and letter
    if chracters in the letter
    are avoided by the words, will return true all characters 
    are avoided, else will return nothing
=#
function check(word, letter)
    for i in word
        for j in letter
            if i == j
                return true
            end
        end
    end
end


#=
    This reads a document containing list of words
    and ask user to enter list of characters in strings,
    the function return words that avoided listed characters
=#

function avoid(b)
    println("Enter the charaters you want to avoid in words")
    letter = readline()
    counter = 0
    for word in eachline(b) 
        Word = check(word, letter)
  
        if Word != true
            println(word)
            counter +=1
        end
    end
    println(counter)
end


avoid("Think_Julia/Chapter_9/words.txt")
