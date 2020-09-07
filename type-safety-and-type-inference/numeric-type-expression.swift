//gunakan integer biasa dengan konversi

//contoh
let twoThousand         :   UInt16  =   2_000
let one                 :   UInt8   =   1
let twoThousandAndOne   =   twoThousand + UInt16(one)

//harus dengan rentang yang sama
//misal UInt16 dengan UInt16
//jika tidak maka akan muncul error
//solusi nya adalah dengan mengganti unit yang berbeda dengan memanggil fungsi UInt yang sama


//INTEGER AND FLOATING-POINT CONVERSION

//jika ingin konversi dengan tipe data berbeda gunakan fungsi tipe data
//contoh
let three                   =   3
let pointOneFourOneFiveNine =   0.14159
let pi                      =   Double(three) + pointOneFourOneFiveNine
print(pi)
let integerPi               =   Int(pi)
print(integerPi)


