//using function types
//kayak deklarasi fungsi
//contoh
func addTwoInts(_ a: Int, _ b: Int) -> Int 
{
    return a + b    
}


func multiplyTwoInts(_ a: Int, _ b: Int) -> Int 
{
    return a * b    
}

 

var mathFunction            :   (Int, Int) -> Int   =   addTwoInts

print("Result \(mathFunction(2,3))")

mathFunction                =   multiplyTwoInts
print("Result \(mathFunction(2,3))")


//function types as parameter types
//fungsi sebagai parameter
//contoh

func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int)
{
    print("Result \(mathFunction(a,b))")    
}
printMathResult(addTwoInts,2,3)


//function types as return TYPES
//return nya berupa fungsi
//contoh

func stepForward(_ input: Int) -> Int 
{
    return input + 1    
}


func stepBackward(_ input: Int) -> Int 
{
    return input - 1    
}


func chooseStepFunction(backward: Bool) -> (Int) -> Int 
{
    return backward ? stepBackward: stepForward     
}

var currentValue                =   3
let moveNearerToZero            =   chooseStepFunction(backward: currentValue > 0)

print("Counting to zero :")
while currentValue != 0
{
    print("\(currentValue)... ")
    currentValue                =   moveNearerToZero(currentValue)
}
print("Zero")