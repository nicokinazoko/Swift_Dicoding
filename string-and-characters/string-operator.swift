//STRING INTERPOLATION
//membangun string dari campuran berbagai tipe konstanta

//contoh
let multiplier              =   4
let message                 =   "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)" 
//output : 4 times 2.5 is 10.0
print(message)

//STRING CONCATENATION
//penggabungan string
//contoh
let string1                 =   "Hello"
let string2                 =   " World!"
var welcome                 =   string1 + string2 //output : Hello World!
print(welcome)


//STRING MUTABILITY
//penambahan string
//contoh
var variableString          =   "Horse"
variableString              +=  " and Carriage"
print(variableString) //output : Horse and Carriage


//STRING COMPARISON
//perbandingan antara string
//contoh
let quotation               =   "Aku belajar di Dicoding Academy"
let sameQuotation           =   "Aku belajar di Dicoding Academy"
if quotation == sameQuotation
{
    print("Aku belajar di Dicoding Academy") //output : Aku belajar di Dicoding Academy
}

let quotation               =   "Aku belajar di Dicoding Academy"
let sameQuotation           =   "Kamu belajar di Dicoding Academy"
if quotation != sameQuotation  
{
    print("Kita belajar di Dicoding Academy") //output : Kita belajar di Dicoding Academy
}