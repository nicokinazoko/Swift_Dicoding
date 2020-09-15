//FUNCTION WITHOUT PARAMETERS
//contoh


func sayHelloWorld() -> String 
{
    return "Hello, World"    
}

print(sayHelloWorld())


//FUNCTION WITH MULTIPLE PARAMETERS
func greet(person: String, alreadyGreeted: Bool) -> String  
{
    if alreadyGreeted
    {
        return "Hello World, " + person
    }
    else
    { 
        return "Hello, " + person
    }
}

print(greet(person: "Nico", alreadyGreeted: true))


//FUNCTION WITHOUT RETURN VALUES
//contoh

func greet(person: String)
{
    print("Hello, \(person)")    
}

greet(person: "Nico")


//kalo ada anak panah berarti akan mengembalikan nilai (return values)
//contoh

func printAndCount(string: String) -> Int 
{
    print(string)
    return string.count    
}


func printWithoutCounting(string: String) 
{
    let _               =   printAndCount(string: string)    
}

printAndCount(string: "Hello, World")
printWithoutCounting(string: "hello, world")


//PRINT WITH MULTIPLE RETURN VALUES
//contoh


func minMax(array: [Int]) -> (min: Int, max: Int) 
{
    var currentMin          =   array[0]
    var currentMax          =   array[0]
    for value in array[1..<array.count] 
    {
        if value < currentMin
        {
            currentMin      =   value
        }    
        else
        if value > currentMax
        {
            currentMax      =   value
        }
    }    

    return (currentMin, currentMax)
}

let bounds                  =   minMax(array: [8,-6,2,109,3,71])
print("Min is \(bounds.min) and max is \(bounds.max)")

//OPTIONAL TUPLE RETURN TYPES
//kalo ada dua return
//contoh

func minMax(array: [Int]) -> (min: Int, max: Int)?
{
    if array.isEmpty
    {
        return nil
    }
    var currentMax          =   array[0]
    var currentMin          =   array[0]

    for value in array[1..<array.count]
    {
        if value < currentMin
        {
            currentMin      =   value
        }
        
        else 
        if value > currentMax
        {
            currentMax      =   value    
        }
        
    }

    return (currentMin,currentMax)
}

if let bounds               =   minMax(array: [8, -6, 2, 109, 3, 71]) 
{
   print("min is \(bounds.min) and max is \(bounds.max)")
}


//FUNCTION WITH AN IMPLICIT RETURN
//jika hanya ekspresi tunggal, maka langsung tanpa return bisa
//contoh


func greeting(for person: String) -> String 
{
    "Hello, " + person + "!"    
}

print(greeting(for:"Nico"))


func anotherGreeting(for person: String) -> String 
{
    return "Hello, " + person + "!"    
}

print(anotherGreeting(for: "Nico"))
