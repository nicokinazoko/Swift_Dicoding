//intinya kayak masukkin tanpa parameter
//contoh

func makeIncrementer(forIncrement amount: Int) -> () -> Int
{
    var runningTotal            =   0
    
    func incrementer() -> Int 
    {
        runningTotal            +=  amount
        return runningTotal    
    }
    return incrementer
}

let incrementByTen              =   makeIncrementer(forIncrement: 10)

print(incrementByTen)