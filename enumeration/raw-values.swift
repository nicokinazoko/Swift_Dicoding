//enum bisa dideklarasikan dengan nilai mentah
//contoh

enum ASCIIControlCharacter: Character
{
    case tab                =   "\t"
    case lineFeed           =   "\n"
    case carriageReturn     =   "\r"
}



//IMPLICITY ASSIGNED RAW VALUES
//jika nilai pertama 1, maka nilai selanjutnya akan bertambah +1 tanpa deklarasi lagi
//contoh

enum Planet: Int
{
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}


//kalo misal tanpa values maka hasilnya akan sesuai dengan nama case nya
//contoh
enum CompasPoint: String
{
    case north,south, east, west
}

//contoh hasilnya
let earthsOrder             =   Planet.earth.rawValue

let sunsetDirection         =   CompasPoint.west.rawValue



//initializing from raw value
//sifatnya harus sama

let positionToFind          =   11
if let somePlanet = Planet(rawValue: positionToFind) 
{
   switch somePlanet 
   {
   case .earth:
       print("Mostly harmless")
   default:
       print("Not a safe place for humans")
   }
} 
else 
{
   print("There isn't a planet at position \(positionToFind)")
}
//output : There isn't a planet at position 11

//perbedaan associated values dan raw value
// Associated Values

// Raw Values

// Memiliki tipe data yang berbeda

// Tipe data harus sama

// Contohnya enum {1,2, “Dicoding”}

// Contohnya enum {1,2,4}

// Nilai dibuat berdasarkan konstanta atau variabel

// Nilai sudah diisi

// Bervariasi dan bisa dinyatakan setiap waktu

// Nilainya sama 