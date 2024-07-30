 
 module Transaction

 using BankModule, CustomerModule
 export deposit, withdraw

 function deposit(cust::Customer, bank::Bank, amount::Float64)
    if cust.cash ≥ amount
        cust.cash -= amount
        cust.bankdeposite += amount 
        bank.cash += amount
        bank.totalDeposit += amount

    else
        println("Not enough cash to deposite this amount")
    end 
 end # End of function

 function withdraw(cust::Customer, bank::Bank, amount::Float64)
    if bank.cash ≥ amount
        if cust.bankdeposite ≥ amount
            bank.cash -= amount
            bank.totalDeposit -= amount
            cust.cash += amount 
            cust.bankdeposite -= amount
        else 
            println("You don't have that amount in your deposit account")
        end 
    else
        println("Not enough cash in our vauls. Sorry!")
    end 
 end
    
 end # End of module