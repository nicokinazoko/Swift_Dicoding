//for biasa
//contoh
let names               =   ["Anna", "Alex", "Brian", "Jack"]
for name in names
{
    print("Hello, \(name)")
    
}


//bisa juga untuk akses key dan value
//contoh
let numberOfLogs        =   ["spider": 8, "ant":6, "cat":4]
for(animalName,legCount) in numberOfLogs
{
    print("\(animalName)s have \(legCount) legs")
}


//bisa juga dengan perulangan rentang angka
//contoh
for index in 1...5
{
    print("\(index) times 5 is \(index * 5)")
}

//jika tidak perlu setiap nilai, cuma nilai akhir maka
//contoh
let base        =   3
let power       =   10
var answer      =   1   
for _ in 1...power
{
    answer      *=  base
}
print("\(base) to the power of \(power) is \(answer)")



//cara agar skip beberapa perulangan
//pake stride(from:..,to:...,by:...)
//contoh
let minutes                     =   60
let minuteInterval              =   5
for tickMark in stride(from:0, to: minutes, by: minuteInterval)
{
    print(tickMark)
}

//bisa juga dengan stride(from:..,through:..,by:..)
//contoh
let hours                       =   12
let hoursInterval               =   3
for tickMark in stride(from:0, through: hours, by:hoursInterval)
{
    print(tickMark)
}