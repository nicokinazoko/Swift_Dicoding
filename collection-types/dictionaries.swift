//DICTIONARIES
//gunanya untuk menyimpan nilai yang tidak berurutan dari jenis yang sama
//ada id pembeda nya

//contoh
//membuat dictionary kosong
var namesOfIntegers             =   [Int: String]()
namesOfIntegers[16]             =   "sixteen"
namesOfIntegers                 =   [:]
print(namesOfIntegers) //output : [:]

//membuat dictionary dengan dictionary literal
//contoh
//kalo misal tidak konsisten dalam tipe data bisa pake cara ini
var airports                    :   [String: String]    =   ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
print(airports) //output : ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
//kalo tipe datanya konsisten bisa pake cara ini
var airports                    =   ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
print(airports) //["YYZ": "Toronto Pearson", "DUB": "Dublin"]

//ACCESSING AND MODIFYING DICTIONARY

//count
//contoh
print("The airports dictionary contains \(airports.count) items")
//output : The airports dictionary contains 2 items

//isEmpty
//contoh
if airports.isEmpty
{
    print("The airports dictionary is empty")
}
else
{
    print("The airports dictionary is not empty")
}
//output : The airports dictionary is not empty


//subscript
//menambahkan key dan value baru
//contoh
airports["LHR"]                 =   "London"
print(airports) //output : ["YYZ": "Toronto Pearson", "DUB": "Dublin", "LHR": "London"]

//mengganti value dari key
airports["LHR"]                 =   "London Hearthrow"
print(airports) //output : ["YYZ": "Toronto Pearson", "DUB": "Dublin", "LHR": "London Hearthrow"]


//updateValue
//gunanya untuk alternatif subcripting 
//updateValue(_:forKey:)    =   menetapkan nilai baru jika tidak ada kata kunci atau memperbaharui apabila kunci sesuai
//updateValue(_:forValue:)  =   mengembalikan nilai lama setelah melakukan pembaruan
//updateValue(_:forKey:)    =   mengembalikan nilai opsional dari jenis dictionary

//contoh

if let oldValue =   airports.updateValue("Dublin Airport", forKey: "DUB")
{
    print("The old value for DUB was \(oldValue)")
}
//output : The old value for DUB was Dublin

//bisa juga pake subscript
//contoh
if let airportsName     =   airports["DUB"]
{
    print("The name of the airport is \(airportsName).")
}
else
{
    print("That airport is not in the airports dictionary")
}
//output : The name of the airport is Dublin Airport.


//removeValue(forKey: )
//menghapus pasangan key-value
//kalo tidak ada yang dihapus maka akan nill
//contoh
if let removeValue      =   airports.removedValue(forKey: "DUB")
{
    print("The removed airport's name is \(removedValue).")
}
else
{
    print("The airports dictionary does not contain a value for DUB")
}
//output : The removed airport's name is Dublin Airport.


//cara dapat output semuanya
for (airportCode, airportName) in airports
{
    print("\(airportCode): \(airportName)")
}


//bisa juga diakses berdasarkan key dan value nya
//contoh

for airportCode in airports.keys 
{
   print("Airport code: \(airportCode)")
}

for airportName in airports.values 
{
   print("Airport name: \(airportName)")
}


//jika perlu menggunakan kunci atau nilai dictionary dengan API yang menggunakan array
//contoh
let airportCodes            =   [String](airports.keys)
print(airportCodes) //output : ["YYZ", "LHR"]
let airportsNames           =   [String](airports.values)
print(airportsNames) //output : ["Toronto Pearson", "London Hearthrow"]


