//STRING FUNCTION
//isEmpty       =   boolean apakah nilainya kosong atau tidak
//startIndex    =   mengakses index pertama dari string
//endIndex      =   mengakses index terakhir dari string
//index         =   mengakses index tertentu
// contoh
//A[A.index(before:A.endIndex)]

//insert        =   //menambahkan teks sesuai dengan posisi yang dituju
//contoh        =   A.insert("!", at: A.endIndex)

//remove        =   mengurangi teks sesuai posisi yang dituju
//contoh        =   A.remove(at: A.index(before: A.index))

//removeSubrange=   mengurai teks pada range tertentu
//contoh        =   A.removeSubrange(A.index(A.endIndex, offsetBy: -10).. < A.endIndex)

//append        =   menambahkan nilai karakter ke string
//contoh        =   A.append("Mantab")

//length        =   menghitung panjang string atau karakter


//CHECK EMPTY STRING
//contoh
var emptyString         =   ""
if emptyString.isEmpty  
{
    print("Nothing to See Here")
    
}

//ACCESSING A STRING
//contoh
let dicoding            =   "Dicoding Indonesia"
print(dicoding[dicoding.startIndex])
//output : D
print(dicoding[dicoding.index(before: dicoding.endIndex)])
//output : a
print(dicoding[dicoding.index(after: dicoding.startIndex)])
//output : i
print(dicoding[dicoding.index(dicoding.startIndex, offsetBy: 7)])
//ouput : g


//MODIFYING A STRING
//contoh
var dicoding            =   "Dicoding Indonesia"
dicoding.insert("!", at: dicoding.endIndex)
print(dicoding)
//output : Dicoding Indonesia!
dicoding.insert(contentsOf: " Mantab", at: dicoding.index(before: dicoding.endIndex))
print(dicoding)
//output : Dicoding Indonesia Mantab!

dicoding.remove(at: dicoding.index(before: dicoding.endIndex))
print(dicoding)
//output : Dicoding Indonesia Mantab
let range               =   dicoding.index(dicoding.endIndex, offsetBy : -6)..<dicoding.endIndex
dicoding.removeSubrange(range)
print(dicoding)
//output : Dicoding Indonesia


//CONCATENATING STRING AND CHARACTERS
var dicoding            =   "Dicoding Indonesia"
let exclamationMark     :   Character   =   "!"
dicoding.append(exclamationMark)
print(dicoding)
//output : Dicoding Indonesia!



//COUNTING CHARACTERS
//contoh
let dicoding            =   "Dicoding Indonesia"
print("Dicoding Indonesia memiliki \(dicoding.count) karakter")
//output : Dicoding Indonesia memiliki 18 karakter