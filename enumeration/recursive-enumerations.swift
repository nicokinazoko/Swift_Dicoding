//enumeration yang memiliki inisialisasi enumeration lain sebagai associated value 
//untuk satu atau lebih enumeration case.

//contoh
enum ArithmeticExpression
{
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression,arithmeticMean)
}

//bisa juga dideklarasikan dengan indirect sebelum enum untuk make secara tidak langsung 
//di enum yang punya associated values

//contoh
indirect enum ArithmeticExpression 
{
   case number(Int)
   case addition(ArithmeticExpression, ArithmeticExpression)
   case multiplication(ArithmeticExpression, ArithmeticExpression)
}


//contoh penggunaanya
let five                =   ArithmeticExpression.number(5)
let four                =   ArithmeticExpression.number(4)
let sum                 =   ArithmeticExpression.addition(five,four)
let product             =   ArithmeticExpression.multiplication(sum,ArithmeticExpression.number(2))   

//contoh rekusif nya
func evaluate(_ expression: ArithmeticExpression) -> Int
{
    switch expression
    {
        case let .number(value):
            return value
        case let .addition(left,right):
            return evaluate(left) + evaluate(right)
        case let .multiplication(left,right):
            return evaluate(left) * evaluate(right)
    }
}

print(evaluate(product))
//output : 18