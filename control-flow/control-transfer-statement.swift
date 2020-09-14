//continue
//menghentikan apa yang lagi jalan dan lanjut ke iterasi selanjutnya
//contoh
let puzzleInput             =   "great minds think alike"
var puzzleOutput            =   ""
let characterToRemove       :   [Character]     =   ["a","e", "i", "o", "u", " "]
for character in puzzleInput
{
    if characterToRemove.contains(character)
    {
        continue
    }
    puzzleOutput.append(character)
}

print(puzzleOutput)


//break
//break untuk mengakhiri eksekusi dari seluruh flow perulangan

//contoh
let numberSymbol: Character             =   "三"  // Chinese symbol for the number 3
var possibleIntegerValue                :   Int?
switch numberSymbol 
{
    case "1", "١", "一", "๑":
        possibleIntegerValue            =   1

    case "2", "٢", "二", "๒":
        possibleIntegerValue            =   2

    case "3", "٣", "三", "๓":
        possibleIntegerValue            =   3

    case "4", "٤", "四", "๔":
        possibleIntegerValue            =   4

    default:
    break
}

if let integerValue = possibleIntegerValue 
{
   print("The integer value of \(numberSymbol) is \(integerValue).")
} 
else 
{
   print("An integer value could not be found for \(numberSymbol).")
}


//fallthrough
//gunanya untuk mendapatkan hasil dari dua case switch
//contoh
let integerToDescribe               =   5
var description                     =   "The number \(integerToDescribe) is"
switch integerToDescribe 
{
    case 2, 3, 5, 7, 11, 13, 17, 19:
        description                 +=  " a prime number, and also"
        fallthrough

    default:
    description += " an integer."
}
print(description)