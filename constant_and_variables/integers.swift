//INTEGERS BOUND
//menghitung nilai maksimum dan minimum dari integer

//untuk menghitung nilai minimum dari integer
let minValue        =   UInt8.min
//untuk menghitung nilai maksimum dari integer
let maxValue        =   UInt8.max

print(minValue , maxValue) //output : 0 255

//Int di sini berupa signed(ada - nya)
//Int 8
let minValueInt8    =   Int8.min
let maxValueInt8    =   Int8.max
print(minValueInt8, maxValueInt8) //output : -128 127

//Int 16
let minValueInt16   =   Int16.min
let maxValueInt16   =   Int16.max
print(minValueInt16, maxValueInt16) //output : -32768 32767

//Int 32
let minValueInt32   =   Int32.min
let maxValueInt32   =   Int32.max
print(minValueInt32, maxValueInt32) //output : -2147483648 2147483647

//Int 64
let minValueInt64   =   Int64.min
let maxValueInt64   =   Int64.max
print(minValueInt64, maxValueInt64) //output : -9223372036854775808 9223372036854775807



//UINT
//variabel int unsigned (tanpa minus)
//Int 8
let minValueUInt8   =   UInt8.min
let maxValueUInt8   =   UInt8.max
print(minValueUInt8, maxValueUInt8) //output : 0 255

//Int 16
let minValueUInt16  =   UInt16.min
let maxValueUInt16  =   UInt16.max
print(minValueUInt16, maxValueUInt16) //output : 0 65535

//Int 32
let minValueUInt32  =   UInt32.min
let maxValueUInt32  =   UInt32.max
print(minValueUInt32, maxValueUInt32) //output : 0 4294967295

//Int 64
let minValueUInt64  =   UInt64.min
let maxValueUInt64  =   UInt64.max
print(minValueUInt64, maxValueUInt64) //output : 0 18446744073709551615