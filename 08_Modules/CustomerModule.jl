
module CustomerModule

export Customer

mutable struct Customer
    name::String
    cash::Float64
    bankdeposite::Float64

    Customer(name) = new(name, 50.0, 0.0)
end

function defaultcustomer(customer::Customer)
    customer.name = "DEFAULT-" * customer.name
    customer.cash = 0
    customer.bankdeposite = 0

end
    
end # End of module