test_types(x::T, y::T) where {T} = "Argument types are the same"
test_types(4, 5)
test_types(4.5, 5.8)

# When the arguments are different, we'll  get error 
test_types(5, 5.6)
test_types("test", "bdf")

# We'll now define situation where the two arguments are different

test_types(x, y) = "Arguments are different"

# developing parametric method to find type of argument

find_type(x::T) where {T} = T
find_type(5.6)
find_type(4 + 4im)

# We can also limit the type 

test_types_number(x::T, y::T) where {T <: Number} = "Same type of number"
test_types_number(45, 67)
test_types_number(5.6, 5)
test_types_number(5.6, 7.8)

# How to resolve when both numbers are of different type 

test_types_number(x::Number, y::Number) = "Both Numbers are different"
test_types_number(4.5, 6)

test_types_number(x, y) = "At least one argument is a number"
test_types_number("abc", 6)

# Using different types parameters 

find_type(x::T, y::P) where {T <: String, P <: Number} = "$x is a String and $y is Number"
find_type("abd", 4.65)

# Using it outside numbers and strings 

check_types(a::Array{T}, x::T) where {T} = "$x has the same type as the array"
check_types(Vector(1:15), 20)

abstract type Shape end

struct Circle <: Shape
    radius::Float64
end

struct Rectangle <: Shape
    width::Float64
    height::Float64
end

area(s::Circle) = π * s.radius^2
area(s::Rectangle) = s.width * s.height

rect = Rectangle(3.5, 9.6)
circ = Circle(6.4)

area(rect)
area(Circle(6.4))

Base.show(io::IO, s::Shape) = println(io, "shape: ", typeof(s), ", Area: ", area(s))
rect
circ

two_args(x::Vararg{Number, 2}) = maximum(x)
two_args(5, 3.4)

two_args(5)
two_args(3, 45)