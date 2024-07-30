touch("10_Stream_and_Network/saple2.txt")

f = open("10_Stream_and_Network/sample.txt")

readlines(f)
close(f)

fname = "10_Stream_and_Network/sample.txt"

open(fname) do file 
    readlines(file)
end 

open(fname) do file 
    for line in eachline(file)
        println(line)
    end
end

vec = 1:10

map(x -> x^3, vec)

map(vec) do x 
    x^3
end 

fname = "10_Stream_and_Network/sample.txt"
f2 = open(fname, "w")
write(f2, "This is new line....\n")
close(f2)

# To keep the existing line, use append

fname = "10_Stream_and_Network/sample.txt"
f3 = open(fname, "w")
write(f3, "Another line is added to this")
close(f3)

open(fname, "a") do f
    write(f, "One more line....\n")
    close(f)
end 

readdir()

readdir("10_Stream_and_Network")
mkdir("10_Stream_and_Network/Data_Files")

for file in ["sales", "employees", "products"]
    touch("10_Stream_and_Network/Data_Files/"*file*".txt")
end 

dir = "10_Stream_and_Network/Data_Files/"
files = readdir(dir)

for fname in files
    file = dir*"/"*fname
    open(file, "a") do f
        write(f, "This is the first line in the file: "*fname)
        close(f)
    end 
end 

dir = "10_Stream_and_Network/Data_files"
mkdir(dir)
for fname in ["sales", "employees", "products"]
    file = dir*"/"*".txt"
    write(file, "This line is to replace the first: "*fname*".txt")
end