//Proses mempersiapkan instance class, structure, atau enumeration untuk digunakan
// pake kata init
// intinya deklarasi awal
// contoh

struct Fahrenheit 
{
    var temperature: Double
    init() 
    {
        temperature = 32.0
    }
}
var f                       =   Fahrenheit()
print("The default temperature is \(f.temperature)° Fahrenheit")
// Prints "The default temperature is 32.0° Fahrenheit"


//versi lain
struct Celsius 
{
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) 
    {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) 
    {
        temperatureInCelsius = kelvin - 273.15
    }
}
let boilingPointOfWater         =   Celsius(fromFahrenheit: 212.0)

let freezingPointOfWater        =   Celsius(fromKelvin: 273.15)


//contoh lain

class Size 
{
    var width:Double, height:Double
    init(w:Double, h:Double) 
    {
        width = w
        height = h
    }
}
 
let twoByTwo                    =   Size(w: 2.0, h: 2.0)


//Required Initializers
//init yang harus dijalankan