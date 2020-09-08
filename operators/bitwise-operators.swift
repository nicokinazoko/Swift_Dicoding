//BITWISE OPERATORS
//operasi biner

//contoh
//operator NOT (~)
let initalBits          =   0b00001111
let invertedBits        =   ~initalBits
print(initalBits, invertedBits) //output : 15 -16

//contoh
//operator AND
let firstSixBits        :   UInt8   =   0b11111100
let lastSixBits         :   UInt8   =   0b00111111
let middleFourBits      =   firstSixBits & lastSixBits
print(middleFourBits) //output : 60

//contoh
//bitwise OR operator
let someBits            :   UInt8   =   0b10110010
let moreBits            :   UInt8   =   0b01011110
let combinedBits        =   someBits | moreBits
print(combinedBits) //output : 254


//contoh
//operator XOR bitwise
let firstBits           :   UInt8   =   0b00010000
let otherBits           :   UInt8   =   0b00000101
let outputBits          =   firstBits ^ otherBits
print(outputBits) //output : 21


//operator shifting
//pergeseran
//contoh
let pink                :   UInt32  =   0xCC6699
let redComponent        =   (pink & 0xFF0000) >> 16
let greenComponent      =   (pink & 0x00FF00) >> 8
let blueComponent       =   pink & 0x0000FF

print(redComponent, greenComponent, blueComponent) //output : 204 102 153



