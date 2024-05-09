5 + 7
14 - 6 
3.14 * 2.78
67 / 13
ans 

ans^2

x = 12; y = 23;
3x + 5y

x, y = 3, 5
3x + 5y 

4(5x + 7y)

15 ÷ 6   # \div TAB

div(15, 6)
div(6.5, 2)

4^3 
0.25^0.5

# In Julia, operators are functions 
4+5 
+(4, 5)
^(4 ,3)

5\15

sqrt(16)
√16       # \sqrt TAB 

cbrt(64)
∛64

rem(28, 5)

a = 7.8; b = 3.6;
a == b
a != b
a ≠ b

c = [1, 2, 3]
d = c
e = deepcopy(c) # This function takes the vector to another memory operation

c == d
c == e 
c === e

c ≡ e # \equiv TAB
a ≤ b # \leg TAB 
a ≥ b # \geq TAB

c = 11.7 
a ≥ b ≥ c

3 ≥ 3 < 9 ≠ 17 ≥ 14

0.4 + 0.2 
0.6 == 0.4 + 0.2
isequal(0.6, 0.4+0.2)

# To check floating point additions, use this instead of strick equality sign 
isapprox(0.6, 0.4 + 0.2)
0.6 ≈ 0.4 + 0.2 # \approx

# Boolean operation

a = true; b = false; 
!a 
!b 

a || b
b || b

x = 109; y = 56;
x & y
x | y
xor(x, y)

~x 

using Bits
bits(5)
~5
bits(-6)

bitstring(5)
bitstring(-6)

x = 7 
x = x + 5
 
x += 5 # x = x + 5
x *=4
x /=17

x ^=3

# Logrithm functions   
log(ℯ^2)
log(10, 10_000)

exp(3) 
ℯ^3

round(3.78) # Nearest integerb
floor(3.78)
ceil(3.78)

abs(-3) # Absolute value 
sign(-4)
sign(2)

# All these are done in radian 
sin(π/6)
cos(π/4)
tan(π/4)

# To use degree 
sind(30)
cosd(45)
tand(30)

rand(4)
rand()