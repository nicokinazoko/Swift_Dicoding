//contoh instance method

class Counter
{
    var count               =   0
    func increment() 
    {
        count + 1
    }


    func incrementBy(amount: Int)
    {
        count               +=  amount
    }

    func reset()
    {
        count               =   0
    }
}



//memanggil instance method nya
let counter                 =   Counter()
counter.increment()

counter.incrementBy(amount: 5)

counter.reset()



//SELF PROPERTY
//instance baru yang merujuk pada dirinya sendiri
//contoh

func increment()
{
    self.count              +=  1
}


//tidak perlu selalu pake SELF
//swift langsung tau kalo instance nya merujuk ke method saat ini
//contoh

struct Point
{
    var x   =   0.0,    y  =   0.0

    func isToTheRight(x: Double) -> Bool
                                    {
                                        return self.x > x
                                    }
}

let somePoint               =   Point(x: 4.0, y: 5.0)

if somePoint.isToTheRight(x: 1.0)
{
    print("This point is to the right of the line where x == 1.0")
}
//output : This point is to the right of the line where x == 1.0

//MODIFYING VALUE TYPES
//bisa diubah dengan menggunakan mutating
//contoh

struct Point {
    var x   = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) 
    {
        x   += deltaX
        y   += deltaY
    }
}
 
var somePoint       =   Point(x: 1.0, y: 1.0)
somePoint.moveBy(x: 2.0, y: 3.0)
print("The point is now at (\(somePoint.x), \(somePoint.y))")
//output : "The point is now at (3.0, 4.0)"


//ASSIGNING TO SELF WITHIN A MUTATING METHOD
//bisa pake self juga secara implisit
//contoh

struct Point 
{
    var x       =   0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) 
    {
        self    =   Point(x: x + deltaX, y: y + deltaY)
    }
}


//contoh versi enum nya
enum TriStateSwitch 
{
    case off, low, high
    mutating func next() 
    {
        switch self 
        {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}
 
var ovenLight               =   TriStateSwitch.low
ovenLight.next()
// ovenLight sama dengan to .high
 
ovenLight.next()
// ovenLight sama dengan to .off



//TYPE METHODS
//Type method dipanggil pada tipe itself, dan ditandai dengan menulis kata kunci static sebelum kata kunci func method
//contoh

class SomeClass 
{
    static func someTypeMethod() 
    {
        // type method bisa Anda implementasikan di sini
    }
}
 
SomeClass.someTypeMethod()