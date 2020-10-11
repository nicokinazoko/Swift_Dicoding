//ADA DUA PROPERTIES
//stored properties dan computed properties

//stored properties itu buat menyimpan nilai
//contoh

struct FixedLengthRange
{
    var firstValue                      :   Int
    var length                          :   Int
}

var rangeOfThreeItems                   =   FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue            =   6


//LAZY STORED PROPERTIES
//properti yang tidak dihitung sampai pertama kali digunakan
//pake kata lazy di awal
//contoh

class DataImporter
{
    var filename                        =   "data.txt"
}

class DataManager 
{
    lazy var importer                   =   DataImporter()
    var data                            =   [String]()    
}

let manager                             =   DataManager()
manager.data.append("Some Data")
manager.data.append("More Some Data")

//dipanggil nya
print(manager.importer.filename)


//COMPUTED PROPERTIES
//untuk menyimpan perhitungan  
//contoh

struct Point
{
    var x               =   0.0, y  =   0.0
}

struct Shape
{
    var origin          =   Point()
    var center          :   Point
                            {
                                get
                                {
                                    return Point(x: origin.x/2, y: origin.y/2)
                                }
                                set(newCenter)
                                {
                                    origin.x                =   newCenter.x/2
                                    origin.y                =   newCenter.y/2
                                }
                            }
}


//contoh yang read-only
struct Cuboid
{
    var width           =   0.0, height     =   0.0, depth      =   0.0
    var volume: Double
                {
                    return width * height * depth
                }
}


let fourByFiveTwo       =   Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print("the volume of fourByFiveByTwo is \(fourByFiveTwo.volume)") //output : the volume of fourByFiveByTwo is 40.0



//PROPERTY OBSERVERS
//gunanya untuk mendeteksi perubahan dalam nilai properti 
//ada dua : wildset dan didset
//contoh

class StepCounter
{
    var totalSteps:   Int   =   0
                                {
                                    
                                    willSet (newSteps)
                                    {
                                        print("About to set totalSteps to \(newSteps)")
                                    }

                                    didSet
                                    {
                                        if totalSteps > oldValue
                                        {
                                            print("Added \(totalSteps - oldValue) steps")
                                        }
                                    }
                                }
}

let stepCounter             =   StepCounter()

stepCounter.totalSteps      =   50

stepCounter.totalSteps      =   150

stepCounter.totalSteps      =   420



//TYPE PROPERTIES
//buat yang sifatnya universal bisa ditambah static
struct SomeStructure 
{
   static var storedTypeProperty            =   "Some value."
   static var computedTypeProperty          :   Int 
                                                {
                                                    return 1
                                                }
}
 
enum SomeEnumeration 
{
   static var storedTypeProperty            =   "Some value."
   static var computedTypeProperty          :   Int 
                                                {
                                                    return 6
                                                }
}
 
class SomeClass 
{
   static var storedTypeProperty            =   "Some value."
   static var computedTypeProperty          :   Int 
                                                {
                                                    return 27
                                                }
   class var overrideableComputedTypeProperty:  Int 
                                                {
                                                    return 107
                                                }
}

print(SomeStructure.storedTypeProperty)
// Prints "Some value."
SomeStructure.storedTypeProperty = "Another value."
print(SomeStructure.storedTypeProperty)
// Prints "Another value."
print(SomeEnumeration.computedTypeProperty)
// Prints "6"
print(SomeClass.computedTypeProperty)
// Prints "27"