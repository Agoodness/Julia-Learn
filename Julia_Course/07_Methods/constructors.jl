mutable struct ModelVars
    x₁::Float64
    x₂::Float64
    x₃::Float64
end

fieldnames(ModelVars)

m1 = ModelVars(2.5, 5.6, 7.8)
methods(ModelVars)
ModelVars(3, 5, 7)

m1.x₁
m1.x₂
m1.x₃

abstract type Student end
Student()

mutable struct CSSStudent <: Student
    name::String
    Student_id::Int64
    gpa::Float64
    specialization::String
    programming_language::String
end

methods(CSSStudent)

cs1 = CSSStudent("George", 123456, 3.75, "Data Science", "Julia")

CSSStudent(name, id, gpa) = CSSStudent(name, id, gpa, "Data Science", "Julia")
methods(CSSStudent)

cs2 = CSSStudent("Mary", 112233, 3.95)
cs3 = CSSStudent("Ali", 135797, 3.11, "Development", "Java")

mutable struct DataScienceStudent <: CSSStudent
end

function CSSStudent(; name, 
                    student_id,
                    gpa = NaN,
                    specialization = "Data Science",
                    programming_language = "Julia")
    return CSSStudent(name, student_id, gpa, specialization, programming_language)

end

cs4 = CSSStudent(name = "Mario", student_id = 3245632, specialization = "Mobile Development", programming_language = "Kotlin")
cs4.gpa = 3.45;
cs4 

students = CSSStudent[]
push!(students, cs1, cs2, cs3, cs4)

print(students)

# Internal constructor

mutable struct MathStudent
    name::String
    student_id::Int64
    gpa::Float64

    MathStudent(name, student_id, gpa) = gpa < 0 ? throw("gpa cannot be negative") : new(name, student_id, gpa)
end

m1 = MathStudent("Karl", 111222, 3.4)
m2 = MathStudent("Ben", 345745, -3.0)

mutable struct EconStudent
    name::String
    Student_id::Int64
    gpa::Float64

    function EconStudent(name, Student_id, gpa)
        if name == ""
            throw("Student name cannot be empty")
        elseif Student_id == NaN || Student_id == 0
            throw("Student ID cannot be empty")
        elseif gpa < 0 || gpa > 4.0
            throw("Enter a valid gpa")
        else 
            new(name, Student_id, gpa) 
        end
    end
end

es1 = EconStudent("", 123456, 3.45)
es2 = EconStudent("Ben", 0, 3.2)
es3 = EconStudent("Daniel", 4567345, 5)
es4 = EconStudent("Daniel", 45687457, 3.2)

MathStudent()

mutable struct PhysStudent <: Student
    name::String
    student_id::Int64
    gpa::Float64

    PhysStudent() = new()
end

ps1 = PhysStudent()
methods(PhysStudent)

mutable struct Course 
    name::String
    student::Array{Union{CSSStudent, MathStudent, EconStudent}, 1}
    opened::Bool

    Course(name::String) = new(name:String, String[], false)
    Course(name::String, members) = new(name, members, length(memebrs) ≥ 5)
end