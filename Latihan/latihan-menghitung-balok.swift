import Foundation

print("Selamat Datang di Dicoding Academy")

//deklarasi awal variabel
let width           =   2.0
let height          =   3.0
let length          =   4.0


//proses perhitungan 
// let volume          =   length * width * height
// let surfaceArea     =   2 * ((length * width) + (length * height) + (width * height))
// let circumFerence   =   4 * (length + width + height)

//membuat input data
print("Masukkan Panjang Balok   =  "); let lengthInput      =   readLine()
print("Masukkan Lebar Balok     =  "); let widthInput       =   readLine()
print("Masukkan Tinggi Balok    =  "); let heightInput      =   readLine()

//mengubah input string menjadi double
if let length   =   Double(lengthInput ?? "0"), let width   =   Double(widthInput ?? "0"), 
let height      =   Double(heightInput ?? "0")
{
    let volume          =   length * width * height
    let surfaceArea     =   2 * ((length * width) + (length * height) + (width * height))
    let circumFerence   =   4 * (length + width + height)

    print("------------------------------------")
    print("Anda memiliki sebuah balok dengan :")
    print("Panjangnya adalah \(length) cm")
    print("Lebarnya adalah \(width) cm")
    print("Tingginya adalah \(height) cm")
    print("Volume nya adalah \(volume) cm3")
    print("Luas Permukaannya adalah \(surfaceArea) cm2")
    print("Kelilingnya adalah \(circumFerence) cm")
    print("--------------------------------------")
}
else 
{
    // Ketika input tidak valid
    print("----------------------------------")
    print("Input tidak valid")
    print("----------------------------------")    
}

//membuat output
// print("------------------------------------")
// print("Anda memiliki sebuah balok dengan :")
// print("Panjangnya adalah \(length) cm")
// print("Lebarnya adalah \(width) cm")
// print("Tingginya adalah \(height) cm")
// print("Volume nya adalah \(volume) cm3")
// print("Luas Permukaannya adalah \(surfaceArea) cm2")
// print("Kelilingnya adalah \(circumFerence) cm")
// print("--------------------------------------")



