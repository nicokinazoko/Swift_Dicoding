//DEFINITION SYNTAX
//bisa juga pake struct
//contoh

struct Resolution
{
    var width           =   0
    var height          =   0
}


class VideoMode
{
    var resolution      =   Resolution()
    var interlaced      =   false
    var framerate       =   0.0
    var name            :   String?

}


//STRUCTURED AND CLASS INSTANCES
//kaya definisikan variabel apa yang dipake untuk class dsb
//membuat instance baru
//contoh

let someResolution      =   Resolution()
let someVideoMode       =   VideoMode()


//ACCESSING PROPERTIES
//contoh akses properties dari instance

print("The width of someResolution is \(someResolution.width)") //output : The width of someResolution is 0


//bisa juga ditambahkan secara langsung 
//contoh
someVideoMode.resolution.width      =   1280
print("The width of someVideoMode is now \(someVideoMode.resolution.width)") //output : The width of someVideoMode is now 1280



//MEMBERWISE INITIALIZERS for STRUCTURE TYPES
//menambahkan langsung isi variabel dengan memanggil instance nya
//hanya bisa untuk class
//contoh
let vga                             =   Resolution(width: 640, height: 480)
print("Resolution now is \(vga.width) x \(vga.height)") //output : Resolution now is 640 x 480


//STRUCTURE AND ENUMERATIONS ARE VALUE TYPES
//intinya bisa mengubah isi dari value structure namun tidak merubah awalnya
//contoh

let hd                              =   Resolution(width: 1920, height: 1080)
var cinema                          =   hd

//lalu untuk mengubah panggil saja variabel yang cinema
cinema.width                        =   2048

//hasilnya
print("cinema is now \(cinema.width) pixels wide") //output : cinema is now 2048 pixels wide
//nilai asalnya
print("hd is still \(hd.width) pixels wide") //output : hd is still 1920 pixels wide


//berlaku juga untuk enum
//contoh

enum CompasPoint
{
    case north,south, east, west
    mutating func turnNorth()
    {
        self        =   .north
    }
}

var currenDirrection                =   CompasPoint.west
let rememberDirection               =   currenDirrection
currenDirrection.turnNorth()
print("The current dirrection is \(currenDirrection)") //output : The current dirrection is north
print("The remember direction is \(rememberDirection)") // output : The remember direction is west


//CLASSES ARE REFERENCE TYPES
//sama juga untuk class tidak berubah jika di assign value nya di variabel baru
//contoh

let tenEighty                       =   VideoMode()
tenEighty.resolution                =   hd
tenEighty.interlaced                =   true
tenEighty.name                      =   "1080i"
tenEighty.framerate                 =   25.0

//lalu buat variabel baru untuk menampung tenEighty
//contoh

let alsoTenEigthy                   =   tenEighty
alsoTenEigthy.framerate             =   30.0

print("The framerate property of tenEighty is now \(tenEighty.framerate)") //output : The framerate property of tenEighty is now 30.0