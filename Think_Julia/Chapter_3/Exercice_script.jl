function printgood()
    println("Goodness")
end

function printade()
    println("Adedeji")
end

function printtwice(bruce)
    println(bruce)
    println(bruce)
end

function dotwice(f, g, h)
    f()
    f()
    g()
    g()
    h("Goodness")
end

dotwice(printgood, printade, printtwice)