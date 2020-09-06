//deklarasi biasa
let maximumNumberOfLoginAttempts        =   10;
var currentLogin                        =   0

//deklarasi satu baris
var x   =   0.0,    y  =   0.0,    z    =   0.0;

//jika ingin menyimpan variabel yang tidak berubah, gunakan let
//jika ingin menyimpan variabel yang berubah, gunakan variabel

//ANOTASI
//gunanya untuk mendeklarasikan tipe data
var welcomeMessage                      :   String;
welcomeMessage                          =   "Hello, World";

//bisa juga deklarasi dengan satu baris
var red,green,blue                      :   Double;

//PENAMAAN KONSTANTA DAN VARIABEL
//intinya bebas, bisa bahasa apa saja;
var friendlyWelcome                     =   "Hello"
friendlyWelcome                         =   "Bonjour!"
print(friendlyWelcome)

//MENCETAK KONSTANTA DAN VARIABEL
//func print(_items: Any..., separator: String = " ", terminator: String = "\n")
//fungsi separator:terminator adalah fungsi global untuk mencetak satu atau lebih sebuah nilai ke output

//separator digunakan sebagai pemisah setiap item


//contoh
print(1.0, 2.0, 3.0, 4.0, 5.0 )
//contoh penggunaan separator
print(1.0, 2.0, 3.0, 4.0, 5.0, separator: "     ");

//contoh penggunaan terminator
for n in 1...5 {
    print(n, terminator: "")
}

//penggunaan variabel di print
//menggunakan garis miring dengan kurung \()
//contoh
print("The Current value of friendlyWelcome is \(friendlyWelcome)")