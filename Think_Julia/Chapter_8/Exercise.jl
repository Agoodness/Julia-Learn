

function readletter(a)
    index = lastindex(a)
    while index ≥ 1
        letter = a[index]
        println(letter)
        index = index-1
    end
end

readletter("Top")