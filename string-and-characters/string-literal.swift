//STRING LITERAL
//deklarasi string

//deklarasi biasa
let someString              =   "Some string literal value"
let anotherSomeString       =   String("Some string literal value")

//MULTI LINE STRING LITERAL
//deklarasi string dengan banyak baris
//pake petik 2 tiga """
//contoh
let quotation               =   """
The White Rabbit put on his spectacles.  "Where shall I begin, please your Majesty?" he asked.
 
"Begin at the beginning," the King said gravely, "and go on till you come to the end; then stop."
"""
print(quotation)

//untuk menutup nya pake petik 2 tiga lagi
//contoh
let singleLineString        =   "These are the same"
let multiLineString         =   """
These are the same.
"""
print(singleLineString, multiLineString)

//cara untuk memasukkan line break tapi tanpa memasukkan nya ke dalam string
//contoh
let softWrappedQuotation    =   """
The White Rabbit put on his spectacles. "Where shall I begin. \
please your Majesty?" He asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop" 
"""
print(softWrappedQuotation)


//untuk menambahkan umpan baris, baris pertama dan terakhir dikosongkan
//contoh
let lineBreaks              =   """
 
This string starts with a line break.
It also ends with a line break.
 
"""
print(lineBreaks)


//bebas kalo ada indentasi
//tapi kalo indentasi di depan akan termasuk
//contoh
let linesWithIndentation    =   """
    This line doesn’t begin with whitespace.
        This line begins with whitespace.
    This line doesn’t begin with whitespace.
    """
print(linesWithIndentation)


//CHARACTERS LITERAL
//bagian dari string literal
//contoh

let char1       :   Character       =   "A"
let char2       :   Character       =   "B"

print("Value of char1 \(char1)")
print("Value of char2 \(char2)")

//bisa juga sebagai perulangan dengan total kata pada char
for character in "Dog!????"
{
    print(character)
}

//bisa juga dijadikan array
let catCharacter    :   [Character] =   ["C","A","T","!","?","?","?", "?"]
let catString       =   String(catCharacter)
print(catString)


//nilai khusus pada string literal
// \0   =   null character
// \\   =   backslash
// \t   =   horizontal tab
// \n   =   line feed
// \r   =   carriage return
// \"   =   tanda kutip ganda
// \'   =   tanda kutip tunggal
// \u{n}=   angka heksa

//contoh
let wiseWord        =   "\"Imagination is more important dan knowledge\" - Einstein"
let dollarSign      =   "\u{24}"
let blackHeart      =   "\u{2665}"
let sparklingHeart  =   "\u{1F496}"

print(wiseWord, dollarSign, blackHeart, sparklingHeart)

let threeDoubleQuotationMarks   =   """
Escaping the first quotation marks \"""
Escaping all three quotaion marks \"\"\"
"""

print(threeDoubleQuotationMarks)

