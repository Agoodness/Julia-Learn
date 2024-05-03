chr = 'a'
typeof(chr)
numchar = Int(chr)
typeof(numchar)
unichar = '⫃'
'\u03A3'
'\u0381'

str = "Julia String"
longstr = """Another Julia String"""
typeof(longstr)

str = "Julia Language"
str[1] 
str[14]

str[begin]
    
str[end]

str[end - 1]
str[end ÷ 2]

str[3:5]
firstindex(str)
lastindex(str)
length(str)

# For inicode characters
newstr = "αβσ"
firstindex(newstr)
lastindex(newstr)

newstr[1]
newstr[2]
newstr[3]
# We are getting error because not all characters are save in 1byte, α and β are save with two bytes

c = "∞ α a Σ"
length(c)
lastindex(c)

ncodeunits('→')

# Concatenate two strings
str1 = "Julia programming"
str2 = "Is the best."
string(str1, str2)

str1 * " " *str2
"julia "^4

# To interapolate
x = 4; y = 5;
"First number is $x, the second number is $y  and their sum if $(x + y)"