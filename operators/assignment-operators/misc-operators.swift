//OPERATOR MINUS UNARY
//operator yang awalannya ada minus (-)

//contoh
let three           =   3
let minusThree      =   -three
let plusThree       =   -minusThree

print(three, minusThree, plusThree)  //output : 3 -3 3


//OPERATOR PLUS UNARY
//operator yang awalannya ada plus (+)
//contoh

let minusSix        =   -6
let alsoMinusSix    =   +minusSix
print(minusSix, alsoMinusSix)

//TERMINARY CONDITIONAL OPERATOR
//operator khusus yang terdiri dari 3 bagian , pertanyaan, jawaban 1, dan jawaban 2
//simplenya kayak if true else

//contoh
let contentHeight   =   40
let hasHeader       =   true
let rowHeight       =   contentHeight + (hasHeader ? 50 : 20)
print(rowHeight) //output : 90, karena hasHeader bersifat true, maka rowHeight akan ditambah dengan 50


