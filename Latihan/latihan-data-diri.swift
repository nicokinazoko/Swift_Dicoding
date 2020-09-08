import Foundation

//membuat data diri
print("Selamat Datang di Dicoding Academy")

// let firstName   =   "Nico", lastName    =   "Nico"
// let fullName    =   firstName + " " + lastName
// let Address      =   "Kebumen"
// let job         =   "Mahasiswa"
// let age         =   0b10110

//line ini untuk input data
print("Masukkan Nama depan Anda"); let firstName       =   readLine()!
print("Masukkan Nama belakang Anda"); let lastName        =   readLine()!
print("Masukkan Umur Anda"); let age             =   readLine()!
print("Masukkan alamat anda"); let address         =   readLine()!
print("masukkan Pekerjaan Anda"); let job             =   readLine()!

//readLine()! berfungsi untuk memasukkan input di command line

let fullName        =   firstName + " " + lastName



print("............................")
//ini output program
print("Apakah Kalian Tahu \(fullName)")
print("\(firstName) adalah seorang \(job)")
print("Saat ini dia berumur \(age) dan bertempat tinggal di \(address)")
print("............................")