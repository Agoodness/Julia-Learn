println("Enter your score: ")
score = readline();
score = parse(Int64, score)

if 85 ≤ score ≤ 100
    println("Your grade is A")
elseif 70 ≤ score < 85 
    println("Your grade is B")
elseif 60 ≤ score < 70 
    println("Your grade is C")
elseif 0 ≤ score < 60 
    println("Your score is F")
else
    println("You haven't entered a valid score")
end 


print("Enter your age: ")
age = readline()
# age = parse(Int64, age)
(tryparse(Int, age) === nothing) && (println("Please enter a numberic input"); exit())
(tryparse(Int, age) === nothing) || (age = parse(Int, age))

(0 < age < 100) && (println("Your age is $age. "))
(0 < age < 100) || (println("Please enter a number between 0 and 100!"))