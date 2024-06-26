*
methods(*)
*(3, 4)
*(7.5, 6.6)
*(4, 6.9)

mat1 = reshape(Vector(1:12), (3,4))
mat2 = reshape(Vector(11:22), (4,3))

*(mat1, mat2)

*("Julia ", "Programming")

f(x::Float64, y::Float64) = x^2 + y^2
f(3.0, 6.0)
f(4.0, 4.5)

# Even Float32 type will cause an error
f(3f0, 6fo)

f(x::Number, y::Number) = x^2 - y^2
f(7.0, 4)
f(8, 6)
f(5.6, 9)
f(3.0, 4.0)

f
methods(f)
f(x, y) = "I couldn't find the correct method"

# Multiple dispatch will make the system to choose method to use based on input type 

f("xyz", 5)

g(x::Int64, y) = x * y
g(x, y::Int64) = x / y

g(4, 4.5)
g(4.5, 4)

g(4, 5)

g(x::Int64, y::Int64) = x + y

h(x = 3, y = 4) = x + y
h()

h(x::Int, y::Int) = x - y
h()