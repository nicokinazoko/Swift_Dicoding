//SPECIFYING  ARGUMENT LABELS
//contoh

func greet(person: String, from hometown: String) -> String 
{
    return "Hello, \(person)! Glad you could visit from \(hometown)"    
}

print(greet(person: "Nico", from: "Kebumen"))


//OMITTING ARGUMENT LABELS
//jika tidak pake argumen, pake _
//contoh
func someFunction(_ firstParameterName: Int, secondParameterName: Int) 
{
   // Di dalam badan function, firstParameterName dan secondParameterName
   // merujuk ke nilai argumen untuk perameter pertama dan kedua.
}

someFunction(1, secondParameterName: 2)

//DEFAULT PARAMETER VALUES
//jika ingin menambahkan value default bisa
//contoh
func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) 
{

}
someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6) // parameterWithDefault adalah 6
someFunction(parameterWithoutDefault: 4) // parameterWithDefault adalah 12


//VARIADIC PARAMETERS
//jika parameter yang diambil lebih dari 1
//pake nya ...
//contoh

func arithmeticMean(_ numbers: Double...) -> Double 
{
    var total          :    Double  =   0

    for number in numbers 
    {
        total           +=  number    
    }    

    return total/Double(numbers.count)
}

print(arithmeticMean(1,2,3,4,5))
print(arithmeticMean(3,8,25,18,18.75))



//IN OUT PARAMETERS
//pertukaran parameter
//contoh

func swapTwoInts(_ a : inout Int, b: inout Int) 
{
    let temporaryA          =   a
    a                       =   b
    b                       =   temporaryA    
}

var someInt                 =   5
var anotherInt              =   905
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
